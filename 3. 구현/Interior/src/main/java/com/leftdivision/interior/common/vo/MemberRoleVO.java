package com.leftdivision.interior.common.vo;

public class MemberRoleVO {
	private String memberId;
	private String memberRole;
	private String memberRoleNm;
	
	
	@Override
	public String toString() {
		return "MemberRoleVO [memberId=" + memberId + ", memberRole=" + memberRole + ", memberRoleNm=" + memberRoleNm
				+ "]";
	}


	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getMemberRole() {
		return memberRole;
	}


	public void setMemberRole(String memberRole) {
		this.memberRole = memberRole;
	}


	public String getMemberRoleNm() {
		return memberRoleNm;
	}


	public void setMemberRoleNm(String memberRoleNm) {
		this.memberRoleNm = memberRoleNm;
	}

	
	
	

}
