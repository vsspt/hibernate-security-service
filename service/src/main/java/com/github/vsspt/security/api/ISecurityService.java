package com.github.vsspt.security.api;

import com.github.vsspt.security.schema.User;


public interface ISecurityService {

    User getUser(String username);
}
