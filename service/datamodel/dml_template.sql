INSERT INTO users  (username,   password,   firstName,   lastName,   created,   updated) VALUES   (?,   ?,   ?,   ?,   ?,   ?);
INSERT INTO roles   (role_name,   description,   created,   updated) VALUES   (?,   ?,   ?,   ?);
INSERT INTO users_roles   (username,   role_name) VALUES   (?,   ?);
INSERT INTO permissions (permission) VALUES  (?);
INSERT INTO permissions_roles (permission, role_name) VALUES  (?,  ?);
INSERT INTO modules (id) VALUES (?);
INSERT INTO modules_roles (module_id, role_name) VALUES  (?, ?);
