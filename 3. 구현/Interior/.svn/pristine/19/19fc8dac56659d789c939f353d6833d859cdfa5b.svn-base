package com.leftdivision.interior.member;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.common.util.LDFileUpload;
import com.leftdivision.interior.common.vo.ResultMessageVO;
import com.leftdivision.interior.exception.BizNotEffectedException;
import com.leftdivision.interior.exception.BizNotFoundException;
import com.leftdivision.interior.exception.BizPasswordNotMatchedException;
import com.leftdivision.interior.exception.DaoException;
import com.leftdivision.interior.member.service.IMemberService;
import com.leftdivision.interior.member.vo.MemberVO;


@Controller
public class MemberController {

	@Inject
	IMemberService memberService;

	@Autowired
	private LDFileUpload ldFileUpload;
	
	@Autowired
	private ResultMessageVO resultMessageVO;

	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping("/member")
	public String member(Model model) {

		try {
			List<MemberVO> memberList = memberService.getMemberList();
			logger.info("memberList" + memberList);
			model.addAttribute("memberList", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "member.memberList";
	}

	@RequestMapping("/member/memberView")
	public String memberView(@RequestParam("memberId") String memberId, Model model) {

		try {
			MemberVO member = null;
			if (memberId != null && !memberId.equals("")) {
				member = memberService.getMember(memberId);
			} else {
				throw new BizNotEffectedException();
			}
			// request.setAttribute("member", member);
			model.addAttribute("member", member);

		} catch (BizNotEffectedException bne) {
			bne.printStackTrace();
			// request.setAttribute("bne", bne);
			model.addAttribute("bne", bne);
		} catch (DaoException de) {
			de.printStackTrace();
			// request.setAttribute("de", de);
			model.addAttribute("de", de);
		}
		return "member.memberView";
	}
	
	
	
// 회원 정보 
	@RequestMapping("/member/memberEdit")
	public String memberEdit(@RequestParam("memberId") String memberId, Model model) {

		System.out.println("(memberEdit) memberId :"+ memberId );
		
		try{
			MemberVO member = memberService.getMember(memberId);
			// 비번 안나오게
			member.setMemberPass("");
			model.addAttribute("member", member);
		}catch(BizNotEffectedException bne){
			bne.printStackTrace();
			model.addAttribute("bne", bne);
		}catch(DaoException de){
			de.printStackTrace();
			model.addAttribute("de", de);
		}
		return "member.memberEdit";
	}
	
	
//	회원 수정
	@RequestMapping("/member/memberModify")
	public String memberModify(@ModelAttribute("member") 
								   MemberVO member
								  ,Model model) {
		try{
			if(member.getMemberId() !=null && ! member.getMemberId().equals("")) {
				 memberService.modifyMember(member);
				logger.info("member : "+ member);
			}else {
				throw new Exception();
			}
		
		}catch(BizNotEffectedException bne){
			bne.printStackTrace();
			resultMessageVO.failSetting(false, "회원정보 수정 실패", "회원정보 수정에 실패했습니다."
					+ " 전산실로 문의해주세요 042)719-8850");
		}catch(BizPasswordNotMatchedException bpn){
			bpn.printStackTrace();
			resultMessageVO.failSetting(false, "회원정보 수정 실패"
					, " 입력하신 패스워드가 올바르지 않습니다. 다시 입력해주세요!");
		}catch(BizNotFoundException bnf){
			bnf.printStackTrace();
			resultMessageVO.failSetting(false, "회원정보 수정 실패", "회원정보 수정에 실패했습니다."
					+ " 전산실로 문의해주세요 042)719-8850");
		}catch(Exception de){
			de.printStackTrace();
			resultMessageVO.failSetting(false, "회원정보 수정 실패", "회원정보 수정에 실패했습니다."
					+ " 전산실로 문의해주세요 042)719-8850");
		}
		model.addAttribute("resultMessageVO", resultMessageVO);
		
		return "/common/message";
	}
	
	
//	 회원 삭제
	@RequestMapping("/member/memberDelete")
	public String memberDelete(@ModelAttribute MemberVO member, Model model, HttpServletRequest request) {

		
		try{
			if(member.getMemberId() !=null && ! member.getMemberId().equals("")) {
				memberService.removeMember(member);
			}else {
				throw new Exception();
			}
			HttpSession session =  request.getSession();
			session.removeAttribute("memberVO");
			
			return "redirect:/";
			
		}catch(BizNotFoundException bnf){
			bnf.printStackTrace();
			resultMessageVO.failSetting(false, "회원 탈퇴 실패", "회원탈퇴에 실패했습니다."
					+ "  전산실로 문의해주세요 042)719-8850");
		}catch(BizPasswordNotMatchedException bpn){
			bpn.printStackTrace();
			resultMessageVO.failSetting(false, "회원 탈퇴 실패", "입력하신 비밀번호가 올바르지 않습니다. 다시 입력해주세요");
		}catch(BizNotEffectedException bne){
			bne.printStackTrace();
			resultMessageVO.failSetting(false, "회원 탈퇴 실패", "회원탈퇴에 실패했습니다. "
					+ " 전산실로 문의해주세요 042)719-8850");
		}catch(Exception de){
			de.printStackTrace();
			resultMessageVO.failSetting(false, "회원 탈퇴 실패", "회원탈퇴에 실패했습니다. "
					+ " 전산실로 문의해주세요 042)719-8850");
		}
		model.addAttribute("resultMessageVO", resultMessageVO);
		
		return "/common/message";
	}
	
	
	 

}
