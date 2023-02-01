package com.leftdivision.interior.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.leftdivision.interior.attach.dao.IAttachDao;
import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.common.vo.MemberRoleVO;
import com.leftdivision.interior.exception.BizDuplicateKeyException;
import com.leftdivision.interior.exception.BizMailAuthException;
import com.leftdivision.interior.exception.BizNotEffectedException;
import com.leftdivision.interior.exception.BizNotFoundException;
import com.leftdivision.interior.exception.BizPasswordNotMatchedException;
import com.leftdivision.interior.member.dao.IMemberDao;
import com.leftdivision.interior.member.vo.MailAuthVO;
import com.leftdivision.interior.member.vo.MemberVO;

@Service
public class MemberServiceImpl implements IMemberService {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	IMemberDao memDao;
	
	@Inject
	private IAttachDao attachDao;
	
	// 서블릿 설정에 올려놓은 암호 인코딩하는 객체 끌어쓰기
	@Inject
	private BCryptPasswordEncoder passwordEncoder;
	

	/**
	 * 멤버리스트 가져오기
	 * @author 박형구
	 */
	@Override
	public List<MemberVO> getMemberList() {
		List<MemberVO> memberList = memDao.getMemberList();
		return memberList;
	}

	// 아이디 체크
	@Override
	public boolean idCheck(String memberId) {
		
		int cnt = memDao.idCheck(memberId);
		
		if(cnt == 0) {
			return true;
		}
		
		return false;
	}

//	인증번호를 DB에 저장
	@Override
	public void registerMailAuth(String mail, String authKey) throws BizMailAuthException {
		logger.info("mail:" + mail);
		logger.info("authKey : " + authKey);
		
		// 메일이 있나 없나 확인
		int resultCnt = memDao.mergeMailAuth(mail, authKey);
		
		if(resultCnt == 0) {
			throw new BizMailAuthException();
		}
	}
	
	// 인증번호 비교하는 서비스 임플
	@Override
	public boolean authKeyCompare(MailAuthVO mailAuthVO) {
		logger.info("mailAuthVO : "+ mailAuthVO);
		MailAuthVO vo = memDao.getMailAuth(mailAuthVO.getMailId());
		
		if(vo == null) {
			return false;
		}else {
			// db와 사용자 입력 인증키가 같으면
			if(vo.getMailKey().equals(mailAuthVO.getMailKey())) {
				// db의 is_auth를 0에서 1로 바꿀것이다
				// 마지막 회원가입 절차시 is_auth의 값을 물어서
				// 1이면 통과
				memDao.completeAuth(mailAuthVO.getMailId());
				return true;
			}else {
				return false;
			}
		}
	}

//	회원가입 마지막 단계쯔음
	@Override
	public void registerMember(MemberVO member) throws BizDuplicateKeyException, BizMailAuthException, BizNotEffectedException {

		if(member.getMemberId() != null && ! member.getMemberId().equals("")) {
			MemberVO vo = memDao.getMember(member.getMemberId());
			
			if(vo != null) {
				throw new BizDuplicateKeyException();
			}
			
			// 인증메일 확인
			Integer rowCount = memDao.checkMailAuth(member.getMemberMail());
			if(rowCount != 1) {
				throw new BizMailAuthException();
			}
			
			
			// 비밀번호 암호화 > 단방향임
			String encodedPw = passwordEncoder.encode(member.getMemberPass());
			logger.info("encodedPw : "+ encodedPw);
			member.setMemberPass(encodedPw);
			
			int resultCnt1 =  memDao.insertMember(member);
			if( resultCnt1 != 1) {
				throw new BizNotEffectedException();
			}
			int resultCnt2 = memDao.insertUserRole(member);
			if( resultCnt2 != 1) {
				throw new BizNotEffectedException();
			}
			
			
		}
		
	}

	// 로그인 단계
	@Override
	public boolean loginCheck(MemberVO member, HttpServletRequest request, HttpServletResponse response) throws BizNotEffectedException {
		
		MemberVO vo = null;
		if(member.getMemberId() == null || member.getMemberPass() == null) {
		 
			return false;
			
		}else {
			vo = memDao.loginCheck(member);
		}
		try {
			if(vo == null) {
				return false;
			}else {
				
				// 암호화에서 salt를 사용하기 때문에 match라는 메서드를 사용
				// match는 boolean으로 반환해준다
				boolean match = passwordEncoder.matches(member.getMemberPass(), vo.getMemberPass());
				logger.info("match : "+ match);
				if(!match) {
					return false;
				}
				
				
			   List<MemberRoleVO> memberRoleList  = memDao.getUserRole(member);

			    if(memberRoleList != null) {
			    	vo.setMemberRoleList(memberRoleList);
			    }
				HttpSession session = request.getSession();
				session.setAttribute("memberVO", vo);

				String rememberMe = member.getRememberMe();
				if (rememberMe != null && rememberMe.equals("Y")) {
					Cookie cookie= new Cookie("rememberMe", member.getMemberId());
					response.addCookie(cookie);
				}else{
					Cookie cookie= new Cookie("rememberMe", "");
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new BizNotEffectedException();
		}
		
	}

	
	// 회원 정보 가져오기
	@Override
	public MemberVO getMember(String memberId) throws BizNotEffectedException {
		MemberVO member = null;
		if(memberId != null && ! memberId.equals("")) {
			member = memDao.getMember(memberId);
			if(member == null) {
				throw new BizNotEffectedException();
			}
		}
		
		// 프로필 이미지 불러오기 >> 사용자가 이미지 수정할 수도 있으니
		// 가장 최근 프로필 이미지를 가져올 것이다 >> 이미지 키값 번호가 가장 큰 수 >> 가장 최근 이미지
		// integer로 받으면 null 받아도 예외처리는 안난다
		
		// 여기서는 이미지를 바로 가져가는게 아니라
		// 이미지의 key 번호만 가져가서
		// 화면에서 이미지 key값으로 요청해서 이미지를 출력할 것이다
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("memberId", memberId);
//		map.put("atchCategory", "PROFILEPHOTO");
//		Integer atchNo = attachDao.getAttachNo(map);
//		logger.info("atchNo : " + atchNo);
//		
//		if(atchNo != null) {
//			member.setAtchNo(atchNo);
//		}
		
		return member;
	}
	
	
// 회원정보수정
	@Override
	public void modifyMember(MemberVO member) 
			throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {
		
		
		MemberVO vo = null;
		if( member.getMemberId() != null && ! member.getMemberId().equals("")) {
			vo = memDao.getMember(member.getMemberId());
		}
		
		if(vo == null) {
			throw new BizNotFoundException();
		}
		
		// 암호화에서 salt를 사용하기 때문에 match라는 메서드를 사용
		// match는 boolean으로 반환해준다
		// 화면에서 쏜 비번, db 비번 비교
		boolean match = passwordEncoder.matches(member.getMemberPass(), vo.getMemberPass());
		
		if( !match ) {
			throw new BizPasswordNotMatchedException();
		}
		// 신규 비밀번호 암호화 > 단방향임
		String encodedPw = passwordEncoder.encode(member.getMemberPassNew());
		member.setMemberPassNew(encodedPw);
		
		System.out.println("멤버 수정에서 비밀번호 수정 확인 :" + member);
		
		int resultCnt = memDao.updateMember(member);
		
		if(resultCnt != 1){
			throw new BizNotEffectedException();
		}
		
		
	}

	@Override
	public void removeMember(MemberVO member) throws BizNotFoundException, BizPasswordNotMatchedException, BizNotEffectedException {
		
		
		MemberVO vo = null;
		if(member.getMemberId() != null && ! member.getMemberId().equals("")) {
			vo = memDao.getMember(member.getMemberId());
		}
		if( vo == null) {
			throw new BizNotFoundException();
		}
		
		// 암호화에서 salt를 사용하기 때문에 match라는 메서드를 사용
		// match는 boolean으로 반환해준다
		// 화면에서 쏜 비번, db 비번 비교
		boolean match = passwordEncoder.matches(member.getMemberPass(), vo.getMemberPass());
		
		if( !match ){
			throw new BizPasswordNotMatchedException();
		}
		int resultCnt = memDao.deleteMember(member);
		if(resultCnt != 1){
			throw new BizNotEffectedException();
		}
		
		
	}
	

	
	
}
