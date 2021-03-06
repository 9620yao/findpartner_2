package com.yc.ssm.web.Fileter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;

@WebFilter("/partner/register")
public class BVcodeFilter extends AbstractFilter {

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		LogManager.getLogger().debug("初始化验证码filter...");
	}

	/**
	 * 验证码验证
	 * 
	 */
	@Override
	public void doFilter(ServletRequest requset, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpSession session = ((HttpServletRequest) requset).getSession();
		String srcCode = (String) session.getAttribute("yzm");// 取到原始验证码
		String outCode = requset.getParameter("vcode");
		LogManager.getLogger().debug("srcCode:" + srcCode + ",outCode:" + outCode);
		
		if (srcCode != null && outCode != null && srcCode.intern() == outCode.intern()) {
			LogManager.getLogger().debug("验证码成功...");
			chain.doFilter(requset, response);
		} else {
			LogManager.getLogger().debug("验证码失败...");
			session.setAttribute("emailError", "验证码错误");
			((HttpServletResponse) response).sendRedirect("/findPartner/page/lw-re.jsp");
		}
	}

}
