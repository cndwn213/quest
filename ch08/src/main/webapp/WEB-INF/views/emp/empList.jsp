<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>${dept.dname }</title>
	<style type="text/css">
		tr{ text-align : center;}
	</style>
	<script type="text/javascript">
		$(function(){
			$('#disp').load("deptList.do");
		})
	</script>
</head><body>
<div class="container" align="center">
	<h2>${dept.dname }의 직원 목록</h2>
	<table class="table table-hover table-striped table-bordered">
		<tr><td>사번</td><td>이름</td><td>업무</td><td>입사일</td></tr>
	<c:if test="${empty empList }">
		<tr><td colspan="4">해당 부서에 직원이 없습니다.</td></tr>
	</c:if>
	<c:if test="${not empty empList }">
		<c:forEach var="emp" items="${empList }">
			<tr>
				<td>${emp.empno }</td>
				<td><a href="empSelect.do?empno=${emp.empno }" class="btn btn-info"
					>${emp.ename }</a></td>
				<td>${emp.job }</td>
				<td>${emp.hiredate }</td>
			</tr>
		</c:forEach>
	</c:if>
	</table>
	<a href="deptList.do" class="btn btn-info">부서 목록</a>
	<a href="empInsertForm.do?deptno=${dept.deptno }"
		class="btn btn-info">직원 정보 입력</a>
		<div id="disp"></div>
</div>
</body>
</html>