<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
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
	<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("hh:mm:ss");
	SimpleDateFormat dateFormat2 = new SimpleDateFormat("dd/m/yyyy");

	%>
	<table class="showTopic">
		<tr>
			<th></th>
			<th>Thông tin người bán</th>
		</tr>

		<%
		AuctionItem au = (AuctionItem) request.getAttribute("item");
		double total = au.getCurrentPrice() + au.getPriceStep();
		%>
		<tr>
		<td>
		<span>Giá hiện tại: <%=au.getCurrentPrice()%> VNĐ
		</span>
		 <br> 
		 <span>Người đặt: <%=au.getSeller().getUsername()%>
				(có <%=au.getBids().size()%> lời đặt giá)
		</span> 
		<br> 
		<span>Giá khởi điểm: <%=au.getInitialPrice()%> VNĐ
		</span>
		 <br> 
		 <span>Bắt đầu lúc: <%=dateFormat.format(au.getStartDate().getTime())%>
		 Ngày: <%=dateFormat2.format(au.getStartDate().getTime())%> </span>
		 <br>
		 
		  <span>Ngày kết thúc: <%=dateFormat.format(au.getEndDate().getTime())%>
		 Ngày: <%=dateFormat2.format(au.getEndDate().getTime())%> </span>
		 <br>
		 
		 
		 <span>Thời gian còn lại: <%=au.getDuration() %>
	</span>
	
	<br>
		 
		</span>
		<br>
		
		<form action="bid" method="post" class="form-login">
			<div>
			<span>Giá đặt: <input type="text" name ="price"><%=total%>
			</div>
			
					<button type="submit">Đặt giá</button>
		</form>
		
		</td>
		
		<td>
		<span>Tên tài khoản: <%=au.getSeller().getUsername()%> 
		</span>
		 <br>
		 <span>Emmail: <%=au.getSeller().getEmail()%>
		</span> 
		
		<br>
		 <span>Địa chỉ: <%=au.getSeller().getAddress()%>
		</span>
		</td>

</tr>

	</table>
	
	<div  class = "list"><a href = "listAution">Danh sách đấu giá</a>

	</div>
</body>
</html>