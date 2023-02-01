package com.leftdivision.interior.login;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leftdivision.interior.common.vo.ResultMessageVO;
import com.leftdivision.interior.exception.BizDuplicateKeyException;
import com.leftdivision.interior.exception.BizMailAuthException;
import com.leftdivision.interior.exception.BizNotEffectedException;
import com.leftdivision.interior.member.service.IMemberService;
import com.leftdivision.interior.member.service.MailSendService;
import com.leftdivision.interior.member.vo.MailAuthVO;
import com.leftdivision.interior.member.vo.MemberVO;




@Controller
public class LoginController {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private IMemberService memberService; 
	
	@Inject
	private MailSendService mailSendService;
	
	@Autowired
	private ResultMessageVO resultMessageVO;
	
	@RequestMapping("/join")
	public String join(Model model, @ModelAttribute("member") MemberVO member) {
		return "/login/join";
	}
	
//	idCheck 하는 부분이에요
	@ResponseBody
	@RequestMapping("/join/idCheck")
	public boolean idCheck(@ModelAttribute("member") MemberVO member) {
		logger.info("member.getMemberId() : " + member.getMemberId());
		
		boolean result = memberService.idCheck(member.getMemberId());
		
		return result;
	}
	
	@RequestMapping("/join/mailAuth")
	@ResponseBody
	public boolean mailAuth(@RequestParam(required = true) String mail) throws MessagingException {
		
		logger.info("mail: " + mail);
		boolean result = false;
		
		// 메일로 잘 받았으니 메일로 발송을 하면 된다
		String authKey = mailSendService.sendAuthMail(mail);
		
		if(authKey.equals("false")) {
			result = false;
		}else {
			try {
				memberService.registerMailAuth(mail, authKey);
			} catch (BizMailAuthException e) {
				e.printStackTrace();
			}
			result = true;
		}
		
		// return "/login/join";
		return result;
	}
	
	// mail 인증하는 창
	@RequestMapping("/join/mailWindow")
	public String mailWindow() {
		return "/login/mailWindow";
	}
	
	// 인증키 비교하는 맵핑
	@RequestMapping("/login/authKeyCompare")
	@ResponseBody
	public boolean authKeyCompare(@ModelAttribute MailAuthVO mailAuthVO) {
		boolean result = memberService.authKeyCompare(mailAuthVO);
		
		return result;
	}

	@RequestMapping("/login/loginRegister")
	public String loginRegister(@ModelAttribute("member") MemberVO member
									, Model model) {
	
		logger.info("member: " + member);
		
		try{
				if(member.getMemberId() != null && ! member.getMemberId().equals("")) {
					memberService.registerMember(member);
				}else {
					throw new Exception();
				}
		}catch(BizDuplicateKeyException bde){
			bde.printStackTrace();
			resultMessageVO.failSetting(false, "회원 등록 실패", "이미 사용중인 아이디 입니다! 다른 아이디를 사용해주세요");
		}catch(BizMailAuthException bmae){
				bmae.printStackTrace();
				resultMessageVO.failSetting(false, "회원 등록 실패", "메일이 인증 되지 않았습니다. 메일 인증 버튼으로 인증해주세요");
		}catch(BizNotEffectedException bne){
			bne.printStackTrace();
			resultMessageVO.failSetting(false, "회원 등록 실패", "회원 등록에 실패하였습니다."
					+ " 전살실에 문의 부탁드립니다. 042)719-8850");
		}catch(Exception de){
			de.printStackTrace();
			resultMessageVO.failSetting(false, "회원 등록 실패", "회원 등록에 실패하였습니다."
					+ " 전살실에 문의 부탁드립니다. 042)719-8850");
		}
		
		model.addAttribute("resultMessageVO", resultMessageVO);
		
		return "/common/message";
	}
	
	@RequestMapping("/login/loginCheck")
	public String loginCheck(@ModelAttribute MemberVO member
				, HttpServletRequest request, HttpServletResponse response) {
		// System.out.println("LoginController loginCheck");
		//MemberVO  member = new MemberVO();
		//BeanUtils.populate(member, request.getParameterMap());
		//IMemberService memberService = new MemberServiceImpl();
		try{
			boolean loginCheck =  memberService.loginCheck(member,request, response );
			if(loginCheck) {
				return "redirect:/";
			}else {
				return "redirect:/login/fail";
			}
		}catch (Exception e) {
			e.printStackTrace();
			return "redirect:/login/error";
		}
	}
	
	
	@GetMapping("/login/{msg}")
	public String loginMsg(@PathVariable String msg , Model model) {
		model.addAttribute("msg", msg);
		return "/login/login";
	}
	
	/*
	 * @RequestMapping("/home") public String home() { return "/home/home"; }
	 */
	// 스프링 시큐리티 검수를 타서 >> 우리가 코드 처리해놓은 리멤버미가 처리가 안됨
	// 쿠키에 담아서 리스판스 쿠키에 넣어줬던 처리
	// 여기서 처리해줘야 한다
	@RequestMapping("/home")
	public String home(HttpSession session, HttpServletResponse response) {
		
		MemberVO member = (MemberVO) session.getAttribute("memberVO");
		String rememberMe = member.getRememberMe();
		if(rememberMe != null && rememberMe.equals("Y")) {
			Cookie cookie = new Cookie("rememberMe", member.getMemberId());
			response.addCookie(cookie);
		}else {
			Cookie cookie = new Cookie("rememberMe", "");
			cookie.setMaxAge(0);
			response.addCookie(cookie);
		}
		
		return "/home/home";
	}
	
//	로그아웃 입니다
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
        session.invalidate();
        ModelAndView mv = new ModelAndView("redirect:/");
        return "redirect:/";
	}
	
	
	
}
