<%@page import="model.AuctionItem"%>
<%@page import="model.User"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link href="./css/main.css" rel="stylesheet" type="text/css">
</head>
<body>
	<table class="center">
		<tr>
			<th>Mặt hàng</th>
			<th>Giá</th>
		</tr>

		<%
		Collection<AuctionItem> auctions = (Collection<AuctionItem>) request.getAttribute("auction");
		for (AuctionItem au : auctions) {
		%>

		<tr>

			<td><a href="auction?id=<%=au.getId()%>"><%=au.getDescription()%></a>
			
			</td>
			
			<td>Giá khởi đầu: <%=au.getInitialPrice()%> VND <br> Giá hiện tại: 3<%=au.getCurrentPrice()%> VND <br>(<%=au.getBids().size()%>) lời đặt giá
			</td>
		</tr>
		<%
			}
			%>
</table>
</body>
</html>