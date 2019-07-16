<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                <script src="https://kit.fontawesome.com/6631cf4e8b.js"></script>
            </head>

            <body>

                <div class="container">
                    <footer>
                        <div class="row border border-info border-bottom-0">
                            <div class="col-11 bg-light text-secondary p-2">CSM</div>
                            <div class="col-1 bg-light text-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-light dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							<i class="fas fa-user"></i>
						</button>
                                    <div class="dropdown-menu dropdown-menu-right">
                                        <button class="dropdown-item" type="button" onclick="location.href='#'">
								<i class="fas fa-user p-2"></i>User Profile
							</button>
                                        <button class="dropdown-item" type="button" onclick="location.href='#'">
								<i class="fas fa-sign-out-alt p-2"></i>Logout
							</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </footer>
                    <main>
                        <div class="row">
                            <div class="col-3 bg-light p-2 border border-info border-right-0 border-bottom-0">
                                <div class="row p-2 ">
                                    <div class="col-9  ">
                                        <input type="text" class="form-control" placeholder="Search...">
                                    </div>
                                    <div class="col-3">
                                        <button type="button" class="btn btn-while">
							<i class="fas fa-search"></i>
						</button>
                                    </div>
                                </div>
                                <div class="row p-2">
                                    <div class="col">
                                        <a href="list"><i class="fas fa-table"> View contents</i></a>
                                    </div>
                                </div>
                                <div class="row p-2">
                                    <div class="col">
                                        <a href="#"><i class="fas fa-edit"> Form content</i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-9 border border-info border-bottom-0">
                                <div class="row p-3 ">
                                    <h2>Add Contents</h2>
                                </div>
                                <div class="row p-4 text-success">
                                <c:if test="${param['success']}">Success</c:if>
                                </div>
                                <div class="row">
                                    <div class="col-1"></div>
                                    <div class="col-10 border border-info">
                                        <div class="row bg-light p-2 order border-info">Content Form Element
                                        </div>
                                        
                                        <form:form method="POST" action="addcontent" modelAttribute="contentdata" >
                                        
	                                        <div class="row p-2 font-weight-bold">Title</div>
	                                        <div class="row">
	                                            <div class="col-10">
	                                                <form:input id="title" type="text" path="title" class="form-control" placeholder="Enter the title" required="required"/>
	                                            </div>
	                                        </div>
	                                        <div class="row p-2 font-weight-bold">Brief</div>
	                                        <div class="row">
	                                            <div class="col-10">
	                                                <form:textarea id="brief" path="brief" class="form-control" aria-label="With textarea" />
	                                            </div>
	                                        </div>
	                                        <div class="row p-2 font-weight-bold">Content</div>
	                                        <div class="row">
	                                            <div class="col-10">
	                                                <form:textarea id="content" path="contents" class="form-control" aria-label="With textarea" />
	                                            </div>
	                                        </div>
	                                        <div class="row p-2">
	                                            <table class="table">
	                                                <tr>
	                                                    <td>
	                                                        <input type="submit"  class="btn btn-success" value="Submit"></input>
	                                                        <input type="reset" class="btn btn-success" value="Reset"></input>
	                                                    </td>
	
	                                                    <tr>
	                                            </table>
	
	                                        </div>
                                       
                                       </form:form>
                                        
                                    </div>
                                </div>
                                <div class="col-1"></div>
                            </div>
                        </div>
                    </main>
                    <footer></footer>
                </div>
            </body>

            </html>