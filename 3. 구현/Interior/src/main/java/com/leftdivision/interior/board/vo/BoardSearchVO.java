package com.leftdivision.interior.board.vo;

import com.leftdivision.interior.common.vo.PagingVO;

public class BoardSearchVO extends PagingVO{

	private String searchType;
	private String searchWord;
	private String searchCategory;
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public String getSearchCategory() {
		return searchCategory;
	}
	public void setSearchCategory(String searchCategory) {
		this.searchCategory = searchCategory;
	}
	
	@Override
	public String toString() {
		return "BoardSearchVO [searchType=" + searchType + ", searchWord=" + searchWord + ", searchCategory="
				+ searchCategory + "]";
	}
	
	
	
	
}
