package com.github.vsspt.security.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.github.vsspt.common.db.dao.api.IGenericDAO;
import com.github.vsspt.security.api.ISecurityService;
import com.github.vsspt.security.schema.User;

@Service
public class SecurityService implements ISecurityService {

	@Autowired
	private IGenericDAO<User, String> idUsersDao;

	@Override
	@Transactional
	public User getUser(final String username) {
		return idUsersDao.findById(username);
	}

}
