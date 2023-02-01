package com.leftdivision.interior.board.vo;

import java.util.List;

import com.leftdivision.interior.attach.vo.AttachVO;

public class BoardVO {
	private String boastNumber;					  /* 글번호 */
	private String boastTitle;                   /* 글제목 */
	private String boastImage;                /* 게시글 이미지 */
	private String boastWriter;					 /* 글쓴이 */
	private String boastContent;                 /* 글 내용 */
	private int boastHit;                      /* 조회수 */
	private String boastRegDate;               /* 글 등록일 */
	private String boastModDate;               /* 글 수정일 */
	private String boastDelYn;                 /* 글 지워졌나 여부 */
	private String boastDelId;                 /* 글 삭제자 */
	private String boastDelDate;               /* 글 지운날 */
	private int boastLike;						 /* 좋아요 수 */
	private int boastHate;						 /* 싫어요 수 */
	
	private List<AttachVO> attachList;			/* 첨부파일 리스트 */
	
	@Override
	public String toString() {
		return "BoardVO [boastNumber=" + boastNumber + ", boastTitle=" + boastTitle + ", boastImage=" + boastImage
				+ ", boastWriter=" + boastWriter + ", boastContent=" + boastContent + ", boastHit=" + boastHit
				+ ", boastRegDate=" + boastRegDate + ", boastModDate=" + boastModDate + ", boastDelYn=" + boastDelYn
				+ ", boastDelId=" + boastDelId + ", boastDelDate=" + boastDelDate + ", boastLike=" + boastLike
				+ ", boastHate=" + boastHate + "]";
	}

	public String getBoastNumber() {
		return boastNumber;
	}

	public void setBoastNumber(String boastNumber) {
		this.boastNumber = boastNumber;
	}

	public String getBoastTitle() {
		return boastTitle;
	}

	public void setBoastTitle(String boastTitle) {
		this.boastTitle = boastTitle;
	}

	public String getBoastImage() {
		return boastImage;
	}

	public void setBoastImage(String boastImage) {
		this.boastImage = boastImage;
	}

	public String getBoastWriter() {
		return boastWriter;
	}

	public void setBoastWriter(String boastWriter) {
		this.boastWriter = boastWriter;
	}

	public String getBoastContent() {
		return boastContent;
	}

	public void setBoastContent(String boastContent) {
		this.boastContent = boastContent;
	}

	public int getBoastHit() {
		return boastHit;
	}

	public void setBoastHit(int boastHit) {
		this.boastHit = boastHit;
	}

	public String getBoastRegDate() {
		return boastRegDate;
	}

	public void setBoastRegDate(String boastRegDate) {
		this.boastRegDate = boastRegDate;
	}

	public String getBoastModDate() {
		return boastModDate;
	}

	public void setBoastModDate(String boastModDate) {
		this.boastModDate = boastModDate;
	}

	public String getBoastDelYn() {
		return boastDelYn;
	}

	public void setBoastDelYn(String boastDelYn) {
		this.boastDelYn = boastDelYn;
	}

	public String getBoastDelId() {
		return boastDelId;
	}

	public void setBoastDelId(String boastDelId) {
		this.boastDelId = boastDelId;
	}

	public String getBoastDelDate() {
		return boastDelDate;
	}

	public void setBoastDelDate(String boastDelDate) {
		this.boastDelDate = boastDelDate;
	}

	public int getBoastLike() {
		return boastLike;
	}

	public void setBoastLike(int boastLike) {
		this.boastLike = boastLike;
	}

	public int getBoastHate() {
		return boastHate;
	}

	public void setBoastHate(int boastHate) {
		this.boastHate = boastHate;
	}

	public void setAttachList(List<AttachVO> attachList) {
		this.attachList = attachList;
	}

	public List<AttachVO> getAttachList() {
		return attachList;
	}

	
}
