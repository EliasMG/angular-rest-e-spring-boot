package com.lancamento.api.resource;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/tokens")
public class TokenResource {

	@DeleteMapping("/revoke")
	public void revoke(HttpServletRequest request, HttpServletResponse response) {
		Cookie cookieRefreshToken = new Cookie("refreshToken", null);
		cookieRefreshToken.setHttpOnly(true);
		cookieRefreshToken.setSecure(false); // TODO: Em producao sera true
		cookieRefreshToken.setPath(request.getContextPath() + "/oauth/token");
		cookieRefreshToken.setMaxAge(0);
		
		response.addCookie(cookieRefreshToken);
		response.setStatus(HttpStatus.NO_CONTENT.value());
	}
	
}
