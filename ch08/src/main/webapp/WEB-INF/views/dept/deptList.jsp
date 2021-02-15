<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>부서목록</title>
	<script type="text/javascript">
		function del(deptno){
			var cf = confirm("정말로 삭제하시겠습니까?");
			if (cf) location.href="deleteDept.do?deptno="+deptno;
			else return;
		}
	</script>
</head><body>
<div class="container" align="center">
	<h2 class="text-primary">근무지 정보</h2>
	<table class="table table-striped table-hover">
		<tr><td>부서코드</td><td>부서명</td><td>근무지</td>
			<td>수정여부</td><td>삭제여부</td></tr>
		<c:if test="${empty list }">
			<tr><td colspan="5">부서 정보가 없습니다.</td></tr>
		</c:if>
		<c:if test="${not empty list }">
			<c:forEach var="dept" items="${list }">
				<tr><td>${dept.deptno }</td>
					<td><a class="btn btn-dark btn-sm" 
						href="empList.do?deptno=${dept.deptno }">${dept.dname }</a></td>
					<td>${dept.loc }</td>
					<td><a class="btn btn-warning btn-sm"
						href="updateDeptForm.do?deptno=${dept.deptno }">수정</a></td>
					<td><a class="btn btn-danger btn-sm"
						onclick="del(${dept.deptno})">삭제</a></td></tr>
			</c:forEach>
		</c:if>
	</table>
	<a class="btn btn-info" href="insertDeptForm.do">부서정보 입력</a>
	<a class="btn btn-info" href="allEmpList.do">전 직원 목록</a>
</div>
</body>
</html>