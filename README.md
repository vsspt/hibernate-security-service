# hibernate-security-service
===========
A simple service that implements a security service based on Spring security data-model recommendations.

Usage overview
===========
The Database ER model :

![Database ER Model](https://raw.githubusercontent.com/vsspt/hibernate-security-service/master/service/datamodel/model.png)


Usage
===========
```java
	
	@Resource(name = "idSecurityService")
	private ISecurityService service;

	public User getUser(final String username) {
		return service.getUser(username);
	}
    
```


Maven Dependency - Schema
===========
```xml
<dependency>
 <groupId>com.github.vsspt</groupId>
 <artifactId>security-service-schema</artifactId>
 <version>1.0.0</version>
</dependency>
```	

Maven Dependency - Service
===========
```xml
<dependency>
 <groupId>com.github.vsspt</groupId>
 <artifactId>security-service-hibernate-impl</artifactId>
 <version>1.0.0</version>
</dependency>
```	


What's new
===========

Version 1.0.0
===========
- Initial deployment


