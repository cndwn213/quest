<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>부서 삭제</title></head><body>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("삭제 성공");
			location.href="deptList.do";
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("삭제 실패");
			history.back();
		</script>
	</c:if>
</body>
</html>