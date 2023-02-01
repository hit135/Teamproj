package com.leftdivision.interior.evaluation.vo;

import java.util.List;

import com.leftdivision.interior.attach.vo.AttachVO;

public class MarkerVO {
	
	private String markerId;				/* 마커 아이디(table PK) */
	private String markerLat;			/* 마커 위도 */
	private String markerLongt;			/* 마커 경도 */
	private String markerTitle;			/* 마커 건물명 */
	private String markerAdd;			/* 마커 주소 */
	private String markerCon;			/* 마커 계약 상태 */
	private String markerConDetail;		/* 마커 계약 상세 */
	private String markerScore;			/* 마커 별점 */
	private int markerImage = 0;		/* 마커 이미지 */
	private String markerEvaDetail;		/* 마커 평가 상세 */
	private String markerRegId;			/* 마커 등록한 아이디 */
	private String markerRegDate;		/* 마커 등록된 날짜 */
	private String markerDelId;			/* 마커 삭제한 아이디 */
	private String markerDelDate;		/* 마커 삭제된 날짜 */
	// 첨부파일 리스트
	private List<AttachVO> attachList;
	
	
	@Override
	public String toString() {
		return "MarkerVO [markerId=" + markerId + ", markerLat=" + markerLat + ", markerLongt=" + markerLongt
				+ ", markerTitle=" + markerTitle + ", markerAdd=" + markerAdd + ", markerCon=" + markerCon
				+ ", markerConDetail=" + markerConDetail + ", markerScore=" + markerScore + ", markerImage="
				+ markerImage + ", markerEvaDetail=" + markerEvaDetail + ", markerRegId=" + markerRegId
				+ ", markerRegDate=" + markerRegDate + ", markerDelId=" + markerDelId + ", markerDelDate="
				+ markerDelDate + ", attachList=" + attachList + "]";
	}


	public String getMarkerId() {
		return markerId;
	}


	public void setMarkerId(String markerId) {
		this.markerId = markerId;
	}


	public String getMarkerLat() {
		return markerLat;
	}


	public void setMarkerLat(String markerLat) {
		this.markerLat = markerLat;
	}


	public String getMarkerLongt() {
		return markerLongt;
	}


	public void setMarkerLongt(String markerLongt) {
		this.markerLongt = markerLongt;
	}


	public String getMarkerTitle() {
		return markerTitle;
	}


	public void setMarkerTitle(String markerTitle) {
		this.markerTitle = markerTitle;
	}


	public String getMarkerAdd() {
		return markerAdd;
	}


	public void setMarkerAdd(String markerAdd) {
		this.markerAdd = markerAdd;
	}


	public String getMarkerCon() {
		return markerCon;
	}


	public void setMarkerCon(String markerCon) {
		this.markerCon = markerCon;
	}


	public String getMarkerConDetail() {
		return markerConDetail;
	}


	public void setMarkerConDetail(String markerConDetail) {
		this.markerConDetail = markerConDetail;
	}


	public String getMarkerScore() {
		return markerScore;
	}


	public void setMarkerScore(String markerScore) {
		this.markerScore = markerScore;
	}


	public int getMarkerImage() {
		return markerImage;
	}


	public void setMarkerImage(int markerImage) {
		this.markerImage = markerImage;
	}


	public String getMarkerEvaDetail() {
		return markerEvaDetail;
	}


	public void setMarkerEvaDetail(String markerEvaDetail) {
		this.markerEvaDetail = markerEvaDetail;
	}


	public String getMarkerRegId() {
		return markerRegId;
	}


	public void setMarkerRegId(String markerRegId) {
		this.markerRegId = markerRegId;
	}


	public String getMarkerRegDate() {
		return markerRegDate;
	}


	public void setMarkerRegDate(String markerRegDate) {
		this.markerRegDate = markerRegDate;
	}


	public String getMarkerDelId() {
		return markerDelId;
	}


	public void setMarkerDelId(String markerDelId) {
		this.markerDelId = markerDelId;
	}


	public String getMarkerDelDate() {
		return markerDelDate;
	}


	public void setMarkerDelDate(String markerDelDate) {
		this.markerDelDate = markerDelDate;
	}


	public List<AttachVO> getAttachList() {
		return attachList;
	}


	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}
	
	
	
	
	

}
