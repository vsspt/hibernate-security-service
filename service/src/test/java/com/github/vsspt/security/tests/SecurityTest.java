package com.github.vsspt.security.tests;

import javax.annotation.Resource;

import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.Reporter;
import org.testng.annotations.Parameters;
import org.testng.annotations.Test;

import com.github.vsspt.security.api.ISecurityService;
import com.github.vsspt.security.schema.User;

@ContextConfiguration(locations = { "classpath:securityContext.xml" })
@Test
public class SecurityTest extends AbstractTransactionalTestNGSpringContextTests {

	@Resource(name = "idSecurityService")
	private ISecurityService service;

	@Test
	@Parameters({ "user" })
	public void testUser(final String username) {
		
	    
		final User user = service.getUser(username);

		assert (user != null);
		Reporter.log(user.toString());
	}
}
