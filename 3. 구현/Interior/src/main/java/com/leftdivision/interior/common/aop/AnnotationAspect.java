package com.leftdivision.interior.common.aop;

import java.util.Arrays;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AnnotationAspect {
	private final Logger logger = LoggerFactory.getLogger(this.getClass());

	// "execution(public * com.leftdivision.interior.login.*.*(..)) ||execution(public * com.leftdivision.interior.member.*.*(..))||execution(public * com.leftdivision.interior.board.*.*(..)) || execution( public * com.leftdivision.interior.prod.*.*(..)) || execution( public * com.leftdivision.interior.evaluation.*.*(..)) "
//	@Around("execution(public * com.leftdivision.*.*(..))")
	@Around("execution(public * com.leftdivision.interior.login.*.*(..)) ||execution(public * com.leftdivision.interior.member.*.*(..))||execution(public * com.leftdivision.interior.board.*.*(..)) || execution( public * com.leftdivision.interior.prod.*.*(..)) || execution( public * com.leftdivision.interior.evaluation.*.*(..)) ")
	public Object aroundLog(ProceedingJoinPoint joinPoint) {
		String targetMethod = joinPoint.getSignature().toShortString();
		logger.info(targetMethod + "_start" );
		logger.info(targetMethod + "_parameter" + Arrays.toString(joinPoint.getArgs()) );
		long startTime = System.currentTimeMillis();
		Object result = null;
		try {
			result = joinPoint.proceed();
		} catch (Throwable e) {
			e.printStackTrace();
		}finally {
			long finishTime = System.currentTimeMillis();
			logger.info(targetMethod + "_end");
			logger.info(targetMethod + "_실행시간 : " + (finishTime - startTime )+" ms" );
		}
		return result;
	}
	
	
	
	
}
