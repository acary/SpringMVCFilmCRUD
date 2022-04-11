# SpringMVCFilmCRUD

### Description

This web application implements Create, Read, Update, Delete (CRUD) functionality using Spring MVC and the DAO pattern. Its DAO implementation uses JDBC to persist and retrieve data.

### Functionality:
- Search film database by ID or keyword
- Create, Read, Update, Delete (CRUD) film
- Add actor

##### Running the program:
```
- Import project into Spring Tool Suite (STS)
- Run project on server
- Note: Must run MySQL with relevant database (sdvid) locally
```

### Classes

- `FilmController`: Request handler methods
- `FilmDAO`: Defines database methods
- `FilmDaoJdbcImpl`: Implements DAO interface
- `Film`: Film object
- `Actor`: Actor object

### Lessons Learned

- `DAO pattern` provides a way to handle database operations.
- `Spring MVC` offers helpful web application functionality through annotations such as @Controller, @Autowired, @RequestMapping.
- `Transactions` in the JDBC Implementation help ensure correctness in DB operations (including commit on success or rollback in case of error.
- `Bootstrap` library provides user interface components that enhance the presentation of web pages.
- `Java Server Pages (JSP)` along with the `Java Standard Tag Library (JSTL)` enable data processing, conditional execution, database access, and loops between the backend and frontend of a web application.

### Technologies Used

- JavaSE-1.8
- Spring MVC
- Java Database Connectivity (JDBC)
- MySQL
- Bootstrap
- HTML/CSS
- Spring Tool Suite IDE
- Gradle

### Authors

- Andy Cary (@acary)
- Henry Vo (@lightningclear)
- Ving P (@Eagle-Fang)
