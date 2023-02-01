package com.leftdivision.interior.attach.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.leftdivision.interior.attach.vo.AttachVO;

@Mapper
public interface IAttachDao {

	/**
	 * insert attach
	 * @param attach
	 */
	public void insertAttach(AttachVO attach);

	/**
	 * get List
	 * @param boNo
	 * @param string
	 * @return
	 */
	public List<AttachVO> getAttachList(@Param(value="atchParentNo") String boNo
										  , @Param(value="atchCategory") String string);

	
	/**
	 * get attach
	 * @param atchNo
	 * @return
	 */
	public AttachVO getAttach(int atchNo);

	
	
	public int increaseDownHit(int atchNo);

	
	/**
	 * delete files
	 * @param map
	 */
	public void deleteAttaches(Map<String, Object> map);

	
	public Integer getAttachNo(Map<String, Object> map);
	
	

}
