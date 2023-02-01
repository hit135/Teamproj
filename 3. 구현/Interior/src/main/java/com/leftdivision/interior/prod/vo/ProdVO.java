package com.leftdivision.interior.prod.vo;

import java.util.List;

public class ProdVO {

	private String prodDetailId; 					/* 상품 아이디 */
	private String prodDetailImgUrl; 				/* 상품 이미지 url */
	private String prodDetailWriter;				/* 상품 작성자(업체) */
	private String prodDetailDescript; 			/* 상품 상세 제목 */
	private List<String> prodDetailContentsContent; 			/* 상품 상세 설명 이미지 url 리스트 */
	private String prodDetailPrice; 				/* 상품 가격 */
	private String prodDetailCategory;				/* 상품 대분류 */
	private String prodDetailSubCategory; 			/* 상품 중분류 */
//	private List<String> prodCategoryList; 		/* 상품 대분류 리스트 */
//	private List<String> prodSubCategoryList; 	/* 상품 중분류 리스트 */
	private String limit;								/* 상품 리스트 페이징 넘버 */
	private String limitMax;								/* 상품 리스트 페이징 넘버 */
	
	
	
	public List<String> getProdDetailContentsContent() {
		return prodDetailContentsContent;
	}
	public void setProdDetailContentsContent(List<String> prodDetailContentsContent) {
		this.prodDetailContentsContent = prodDetailContentsContent;
	}
	public String getLimitMax() {
		return limitMax;
	}
	public void setLimitMax(String limitMax) {
		this.limitMax = limitMax;
	}
	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
	}
	public String getProdDetailId() {
		return prodDetailId;
	}
	public void setProdDetailId(String prodDetailId) {
		this.prodDetailId = prodDetailId;
	}
	public String getProdDetailImgUrl() {
		return prodDetailImgUrl;
	}
	public void setProdDetailImgUrl(String prodDetailImgUrl) {
		this.prodDetailImgUrl = prodDetailImgUrl;
	}
	public String getProdDetailWriter() {
		return prodDetailWriter;
	}
	public void setProdDetailWriter(String prodDetailWriter) {
		this.prodDetailWriter = prodDetailWriter;
	}
	public String getProdDetailDescript() {
		return prodDetailDescript;
	}
	public void setProdDetailDescript(String prodDetailDescript) {
		this.prodDetailDescript = prodDetailDescript;
	}
	public String getProdDetailPrice() {
		return prodDetailPrice;
	}
	public void setProdDetailPrice(String prodDetailPrice) {
		this.prodDetailPrice = prodDetailPrice;
	}
	public String getProdDetailCategory() {
		return prodDetailCategory;
	}
	public void setProdDetailCategory(String prodDetailCategory) {
		this.prodDetailCategory = prodDetailCategory;
	}
	public String getProdDetailSubCategory() {
		return prodDetailSubCategory;
	}
	public void setProdDetailSubCategory(String prodDetailSubCategory) {
		this.prodDetailSubCategory = prodDetailSubCategory;
	}
//	public List<String> getProdCategoryList() {
//		return prodCategoryList;
//	}
//	public void setProdCategoryList(List<String> prodCategoryList) {
//		this.prodCategoryList = prodCategoryList;
//	}
//	public List<String> getProdSubCategoryList() {
//		return prodSubCategoryList;
//	}
//	public void setProdSubCategoryList(List<String> prodSubCategoryList) {
//		this.prodSubCategoryList = prodSubCategoryList;
//	}
	@Override
	public String toString() {
		return "ProdVO [prodDetailId=" + prodDetailId + ", prodDetailImgUrl=" + prodDetailImgUrl + ", prodDetailWriter="
				+ prodDetailWriter + ", prodDetailDescript=" + prodDetailDescript + ", prodDetailContentsContent="
				+ prodDetailContentsContent + ", prodDetailPrice=" + prodDetailPrice + ", prodDetailCategory="
				+ prodDetailCategory + ", prodDetailSubCategory=" + prodDetailSubCategory + ", limit=" + limit
				+ ", limitMax=" + limitMax + "]";
	}
	
	
	
	
	
	
	
	
}