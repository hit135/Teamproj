package com.leftdivision.interior.common.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.leftdivision.interior.attach.service.IAttachService;
import com.leftdivision.interior.attach.vo.AttachVO;
import com.leftdivision.interior.exception.BizNotFoundException;

// 여기 @Component 대신 @Controller를 붙인 이유..
// @RestController를 써보기 위해서..
// @Controller
@RestController
public class LDImageLoader {
	
	private final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Inject
	private IAttachService attachService;

	@RequestMapping(value = "/image/{atchNo:^[0-9]+$}", method = RequestMethod.GET)
	public byte[] getImageByteArray(@PathVariable("atchNo") int atchNo) throws BizNotFoundException, IOException {
		
		// 이미지 파일 정보 불러오기
		AttachVO attach = attachService.getAttach(atchNo);
		// path랑 파일 네임
		String filePath = attach.getAtchPath();
		String fileName = attach.getAtchFileName();
		logger.info("filePath : " + filePath + " , fileName : " + fileName);
		
		// 바이너리로 뿌려줄것임
		FileInputStream fis = null;
	
		// ByteArrayOutputStream는 stringBuffer같은 개념
		// 그리고 baos.toByteArray()를 쓰기 위해 선언한다
		ByteArrayOutputStream baos = new ByteArrayOutputStream();

		// 바이트 배열에 넣어서 던져줄 것임
		byte[] byteArray = null;
		
		try {
			// 해당 파일 위치 잡아주고
			fis = new FileInputStream(filePath + File.separator + fileName);
			
			// 해당 파일 가져오기 1024byte 단위로 읽을것임
			byte[] readBytes = new byte[1024];
			
			// 읽을게 계속 있으면 계속 읽어서 baos에 넣어줄것임
			while( (fis.read(readBytes)) != -1 ) {
				baos.write(readBytes);
			}
			byteArray = baos.toByteArray();
			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			fis.close();
			baos.close();
		}
		
		return byteArray;
	}
	
	
}
