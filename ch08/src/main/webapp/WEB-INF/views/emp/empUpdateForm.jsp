<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>직원정보 입력</title></head><body>
<div class="container" align="center">
	<h2 class="text-primary">직원정보 수정</h2>
	<form action="empUpdate.do" method="post" name="frm">
	<input type="hidden" name="empno" value="${emp.empno }">
		<table class="table table-bordered table-striped table-hover">
			<tr><td>사번</td><td>${emp.empno }</td></tr>
			<tr><td>이름</td><td><input type="text" name="ename"
				required="required" value="${emp.ename }" autofocus="autofocus"></td></tr>
			<tr><td>담당업무</td><td><input type="text" name="job"
				required="required" value="${emp.job }"></td></tr>
			<tr><td>관리자 사번</td><td>
			<select name="mgr">
				<c:forEach var="e" items="${empList }">
					<c:if test="${emp.mgr == e.empno  }">				
						<option value="${e.empno }" selected="selected">${e.ename }(${e.empno })</option>
					</c:if>
					<c:if test="${emp.mgr!=e.empno }">
						<option value="${e.empno }">${e.ename }(${e.empno })</option>
					</c:if>
				</c:forEach>
			</select>
			</td></tr>
			<tr><td>입사일</td><td><input type="date" name="hiredate"
				required="required" value="${emp.hiredate }"></td></tr>
			<tr><td>급여</td><td><input type="number" name="sal"
				required="required" value="${emp.sal }"></td></tr>
			<tr><td>추가수당</td><td><input type="number" name="comm"
				required="required" value="${emp.comm }"></td></tr>
			<tr><td>부서코드</td><td>
				<select name="deptno">
					<c:forEach var="dept" items="${deptList }">
						<c:if test="${emp.deptno == dept.deptno }">
							<option value="${dept.deptno }" selected="selected">${dept.dname }(${dept.deptno })</option>					
						</c:if>
						<c:if test="${emp.deptno!=dept.deptno }">
							<option value="${dept.deptno }" >${dept.dname }(${dept.deptno })</option>					
						</c:if>
					</c:forEach>
					
				</select>
			</td></tr>
			<tr><td colspan="2" align="center"><input type="submit" 
				value="확인" class="btn btn-info"></td></tr>
		</table>
	</form>
	<input type="button" value="직원목록" href="empSelect.do?empno=${emp.empno}" class="btn btn-info">
</div>
</body>
</html>