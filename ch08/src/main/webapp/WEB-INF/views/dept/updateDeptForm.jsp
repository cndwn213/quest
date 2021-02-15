<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>부서 입력창</title></head><body>
<div class="containter" align="center">
	<h2 class="text-primary">부서 정보 입력</h2>
	<form action="deptUpdate.do" method="post" name="frm">
	<input type="hidden" name="deptno" value="${dept.deptno }">
	<table class="table table-hover table-bordered table-striped">
		<tr><td>부서코드</td><td>${dept.deptno}<%-- <input type="number" readonly="readonly"
			value="${dept.deptno }" name="deptno"> --%></td></tr>
		<tr><td>부서이름</td><td><input type="text" required="required"
			name="dname" value="${dept.dname }"></td></tr>
		<tr><td>근무지</td><td><input type="text" required="required"
			name="loc" value="${dept.loc }"></td></tr>
		<tr><td colspan="2" align="center"><input class="btn btn-info" 
			type="submit" value="확인"></td></tr>
	</table>
	</form>
	<a href="deptlist.do" class="btn btn-info">목록으로</a>
</div>
</body>
</html>