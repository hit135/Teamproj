package com.leftdivision.interior.attach.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leftdivision.interior.attach.dao.IAttachDao;
import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.exception.BizNotFoundException;

@Service
public class AttachServiceImpl implements IAttachService {
	
	@Inject
	private IAttachDao attachDao;
	
	@Override
	public AttachVO getAttach(int atchNo) throws BizNotFoundException {
		
		AttachVO attach = attachDao.getAttach(atchNo);
		
		if(attach == null) {
			throw new BizNotFoundException();
		}
		return attach;
	}

	
	@Override
	public void increaseDownHit(int atchNo) throws BizNotFoundException {
		int cnt = attachDao.increaseDownHit(atchNo);
		if( cnt == 0) {
			throw new BizNotFoundException();
		}
	}

}
