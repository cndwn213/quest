<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title></head><body>
<c:if test="${result>0 }">
	<script type="text/javascript">
		alert("수정 완료");
		location.href="empSelect.do?empno=${emp.empno}";
	</script>
</c:if>
<c:if test="${result==0 }">
	<script type="text/javascript">
		alert("수정 실패");
		history.back();
	</script>
</c:if>
</body>
</html>