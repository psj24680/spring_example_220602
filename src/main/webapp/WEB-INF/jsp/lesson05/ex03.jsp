<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL fmt 라이브러리</title>
</head>
<body>
	<c:set var="number" value="12345678" /> <%-- 태그 사이에 값 넣으면 숫자가 아니라 문자로 인식함. value에 넣자. --%>
	<h1>숫자 출력</h1>
	<fmt:formatNumber value="${number}" /> <%-- 12,345,678 --%>
	
	<h1>Type</h1>
	숫자: <fmt:formatNumber value="${number}" type="number" /><br>
	숫자(3자리 쉼표 제거): <fmt:formatNumber value="${number}" type="number" groupingUsed="false"/><br>
	
	100%: <fmt:formatNumber value="1" type="percent"/><br>
	40%: <fmt:formatNumber value="0.4" type="percent"/><br>
	
	통화(원): <fmt:formatNumber value="${number}" type="currency" /><br>
	통화(달러): <fmt:formatNumber value="${number}" type="currency" currencySymbol="$" /><br>
	
	<h3>var로 변수에 저장</h3>
	<fmt:formatNumber value="${number}" type="currency" currencySymbol="$" var="doller" /> <%-- var에 저장하면 출력 X --%>
	달러 EL 출력: ${doller}
	
	<h3>pattern</h3>
	3.14: <fmt:formatNumber value="3.14" /><br>
	3.14(0.0000): <fmt:formatNumber value="3.14" pattern="0.0000" /><br> <%-- 3.1400 --%>
	3.14(#.####): <fmt:formatNumber value="3.14" pattern="#.####" /><br>
	3.141592(#.####): <fmt:formatNumber value="3.141592" pattern="#.####" /> <%-- 5번째 자리에서 반올림 --%>
	
	<hr>
	
	<h1>Date객체를 String으로 출력 => fmt:formatDate</h1>
	<fmt:formatDate value="${today}" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초" var="pattern1" />
	pattern1: ${pattern1}<br>
	<fmt:formatDate value="${today}" pattern="yyyy/MM/dd일 HH:mm:ss" var="pattern2" />
	pattern2: ${pattern2}
	
	<h1>String객체를 Date로 출력 => fmt:parseDate</h1>
	<fmt:parseDate value="${pattern2}" pattern="yyyy/MM/dd일 HH:mm:ss" />
</body>
</html>