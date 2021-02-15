<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../header.jsp" %>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>부서 입력</title></head><body>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("입력 성공");
			location.href="deptList.do";
		</script>
	</c:if>
	<c:if test="${result == 0 }">
		<script type="text/javascript">
			alert("입력 실패");
			history.back();
		</script>
	</c:if>
	<c:if test="${result == -1 }">
		<script type="text/javascript">
			alert("이미 존재하는 부서코드입니다.");
			history.back();
		</script>
	</c:if>
</body>
</html>