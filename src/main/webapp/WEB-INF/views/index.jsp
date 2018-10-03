<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Keep-Board</title>
</head>

<body>
	<!-- Create a form which will have text boxes for Note title, content and status along with a Add 
		 button. Handle errors like empty fields -->

    <div class="card-deck">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">ADD</h5>
                <form action = "/add" method = "POST">
                    <div class="form-group">
                    <label for="Title">Title</label>
                    <input class="form-control" name="noteTitle" placeholder="Enter Title">
                  </div>
                  <div class="form-group">
                    <label for="noteContent">Content</label>
                    <input class="form-control" name="noteContent" placeholder="Enter Content">
                  </div>
                  <div class="form-group">
                    <label for="noteStatus">Status</label>
                    <input class="form-control" name="noteStatus" placeholder="Enter Status">
                  </div>
                  <button type="submit" class="btn btn-primary">Submit</button>
                </form>
         </div>
      </div>
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">DELETE</h5>
          <form action = "/delete" method = "POST">
             <div class="form-group">
                <label for="noteId">Id</label>
                <input class="form-control" name="noteId" placeholder="Enter Id">
             </div>
             <button type="submit" class="btn btn-primary">Submit</button>
           </form>
        </div>
      </div>
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">UPDATE</h5>
          <form action = "/update" method = "POST">
                            <div class="form-group">
                              <label for="noteId">Id</label>
                              <input class="form-control" name="noteId" placeholder="Enter Id">
                            </div>
                            <div class="form-group">
                              <label for="noteTitle">Title</label>
                              <input class="form-control" name="noteTitle" placeholder="Enter Title">
                            </div>
                            <div class="form-group">
                              <label for="noteContent">Content</label>
                              <input class="form-control" name="noteContent" placeholder="Enter Content">
                            </div>
                            <div class="form-group">
                              <label for="noteStatus">Status</label>
                              <input class="form-control" name="noteStatus" placeholder="Enter Status">
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                          </form>
        </div>
      </div>
    </div>

<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
    <c:if test="${not empty errorMessage}">
       <p style="color:red">Error</p>: ${errorMessage}
    </c:if>
    <h2>Saved Notes</h2>
    <table border="2">    <tr>
        <td>Title</td>
        <td>Content</td>
        <td>Status</td>
        <td>Created at </td>
    </tr>
    <c:forEach items="${notetitle}" var="note">        <tr>
            <td>${note.noteTitle}</td>        <td>${note.noteContent}</td>        <td>${note.noteStatus}</td>        <td>${note.localDate}</td>        <td>
            </td>
            </tr>
            </c:forEach>
    </table>

	<!-- display all existing notes in a tabular structure with Title,Content,Status, Created Date and Action -->
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

</html>