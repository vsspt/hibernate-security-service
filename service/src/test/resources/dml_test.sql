CREATE TABLE users (
  username  varchar(50) NOT NULL, 
  password  varchar(100) NOT NULL, 
  firstName varchar(50), 
  lastName  varchar(50), 
  created   timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  updated   timestamp NULL, 
  PRIMARY KEY (username));
  
CREATE TABLE roles (
  role_name   varchar(100) NOT NULL, 
  description varchar(255) NOT NULL, 
  created     timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL, 
  updated     timestamp NULL, 
  PRIMARY KEY (role_name));
  
CREATE TABLE users_roles (
  username  varchar(50) NOT NULL, 
  role_name varchar(100) NOT NULL, 
  PRIMARY KEY (username, 
  role_name));
  
CREATE TABLE permissions (
  permission varchar(50) NOT NULL, 
  PRIMARY KEY (permission));
  
CREATE TABLE permissions_roles (
  permission varchar(50) NOT NULL, 
  role_name  varchar(100) NOT NULL, 
  PRIMARY KEY (permission, 
  role_name));
  
CREATE TABLE modules (
  id varchar(50) NOT NULL, 
  PRIMARY KEY (id));
  
CREATE TABLE modules_roles (
  module_id varchar(50) NOT NULL, 
  role_name varchar(100) NOT NULL, 
  PRIMARY KEY (module_id, 
  role_name));

INSERT INTO users (username, password, firstName, lastName, created, updated) VALUES ('vsaavedra', '205bb75c291264b2e42fa108b4883e1e64b65333', 'Vasco', 'Saavedra', '2012-11-12 00:04:45', '2012-11-12 00:04:45');

INSERT INTO roles (role_name, description, created, updated) VALUES('ADMIN', 'Administration role', '2012-11-12 00:05:28', '2012-11-12 00:05:28');

INSERT INTO users_roles (username, role_name) VALUES('vsaavedra', 'ADMIN');

INSERT INTO permissions (permission) VALUES('ADMIN_PERMISSION');

INSERT INTO permissions_roles (permission, role_name) VALUES('ADMIN_PERMISSION', 'ADMIN');

INSERT INTO modules (id) VALUES('administration-module');

INSERT INTO modules_roles (module_id, role_name) VALUES('administration-module', 'ADMIN');
