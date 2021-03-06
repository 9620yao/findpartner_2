package com.yc.ssm.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yc.ssm.entity.PaginationBean;
import com.yc.ssm.entity.Users;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class UsersServiceTest {
	@Autowired
	private UsersService usersService;

	@Test
	public void testListUsers() {
		PaginationBean<Users> users=usersService.listUsers("7", "1");
		System.out.println(users);
		assertNotNull(users);
	}

}
