package com.leftdivision.interior.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.leftdivision.interior.common.vo.MemberRoleVO;
import com.leftdivision.interior.member.vo.MailAuthVO;
import com.leftdivision.interior.member.vo.MemberVO;

@Mapper
public interface IMemberDao {

	/**
	 * get memberList at DB
	 * @author hgp
	 * @return List<MemberVO>
	 */
	List<MemberVO> getMemberList();

	/**
	 * get idCheck at DB
	 * @author hsk
	 * @return List<MemberVO>
	 */
	int idCheck(String memberId);

	/**
	 * merge MailAuth at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	int mergeMailAuth(@Param("mail") String mail, @Param("authKey") String authKey);
	
	/**
	 * get completeAUth at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	void completeAuth(String mailId);

	/**
	 * get MailAUth at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	MailAuthVO getMailAuth(String mailId);

	/**
	 * get Member at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	MemberVO getMember(String memberId);

	/**
	 * check mailAuth at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	Integer checkMailAuth(String memberMail);

	/**
	 * insert Member at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	int insertMember(MemberVO member);

	/**
	 * insert UserRole at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	int insertUserRole(MemberVO member);

	/**
	 * login check at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	MemberVO loginCheck(MemberVO member);

	/**
	 * getUser Role at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	List<MemberRoleVO> getUserRole(MemberVO member);

	/**
	 * update member at DB
	 * @author hsk
	 * @param authKey 
	 * @return List<MemberVO>
	 */
	int updateMember(MemberVO member);

	int deleteMember(MemberVO member);

}
