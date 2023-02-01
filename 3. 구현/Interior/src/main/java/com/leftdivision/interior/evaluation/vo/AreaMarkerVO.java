package com.leftdivision.interior.evaluation.vo;

public class AreaMarkerVO {
	
	private String minLat;				/* 영억의 가장 작은 위도 */
	private String maxLat;				/* 영억의 가장 큰 위도 */
	private String minLongt;				/* 영억의 가장 작은 경도 */
	private String maxLongt;				/* 영억의 가장 큰 경도 */
	
	@Override
	public String toString() {
		return "AreaMarkerVO [minLat=" + minLat + ", maxLat=" + maxLat + ", minLongt=" + minLongt + ", maxLongt="
				+ maxLongt + "]";
	}
	public String getMinLat() {
		return minLat;
	}
	public void setMinLat(String minLat) {
		this.minLat = minLat;
	}
	public String getMaxLat() {
		return maxLat;
	}
	public void setMaxLat(String maxLat) {
		this.maxLat = maxLat;
	}
	public String getMinLongt() {
		return minLongt;
	}
	public void setMinLongt(String minLongt) {
		this.minLongt = minLongt;
	}
	public String getMaxLongt() {
		return maxLongt;
	}
	public void setMaxLongt(String maxLongt) {
		this.maxLongt = maxLongt;
	}
	
}
