<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 상세</title>
<style>
wrap {
	width: 100%;
	margin: 0 auto;
}

#content {
	width: 100%;
	height: 150vh;
}
.background-box {
	width: 100%;
	height: 100%;
	overflow: hidden;
}
.box-color {
	margin: 200px auto;
	width: 58vw;
	height: 80vh;
	background-color: white;
	border-radius: 20px;
	padding: 40px;
	margin-top: 300px;
	box-shadow: 3px 3px 10px #aeaeae;
}
.title {
	font-family: 'Nanum Gothic', sans-serif;
	font-size: 28px;
	font-weight: bold;
	text-align: center;
	color: #3BBD5A;
}
.btn-submit {
	width: 10%;
    height: 3.5vh;
    background-color: #3BBD5A;
    font-family: 'Nanum Gothic', sans-serif;
    font-size: 1.2vmin;
    border: none;
    border-radius: 18px;
    cursor: pointer;
    float: right;
    margin-right: 10px;
}
.mypage-main {
	width: 100%;
	height: 11.8%;
	border-bottom: 0.5px solid #ABABAB; 
}
.font {
    font-size: 13px;
}
#orderList-main{
	width : 100%;
	height: 500px;
	margin-top: 50px;
}
.form{
	margin-bottom: 30px;
}
#table {
    font-size: 16px;
    font-family: 'NanumSquare';
    margin: 0 auto;
    line-height: 36px;
	width:600px;
}
.background {
    background-color: #D5D0D0;
    opacity: 0.9;
}
.data {
    line-height: 40px;
    margin-left: 20px;
    width: 50%;
    text-align: left;
}
.vertical-align {
    vertical-align: middle;
    width: 15%;
}
.background-1 {
    background-color: white;
}

.border {
    border: 0.5px solid rgba(213,208,208,0.7);
}

#orderNo{
	width : 50px;
    color: black;
	height: 100%;
	
}
.text-align{
	text-align: center;
}

.width{
	width: 35%;
}
.delivery{
	width : 35%;
}
#memberInfo-box{
	width: 100%;
	height: 200px;
	border: 1px solid black;
}
</style>
</head>
<body>
<div id="wrap">
		<c:import url="/WEB-INF/views/commons/header.jsp" />
		<div id="leftSpace-top"></div>
		<div id="content">
			<div class="background-box">
				<div class="box-color">
					<div class="mypage-main">
						<p class="title">주문 상세</p>
                    </div>
					<div id="orderList-main">
						<form class="form">
							<table id="table">
							<tr>
                                <td colspan="4" class="data background font">
                                	<input type="button" disabled="true" class="background" style="border: none;" />
                                	<input type="button" disabled="true" style="border: none; " class="background" />${pur.purchaseDate }</td>
                                <td colspan="2" class="center background font" id="orderNo-td">
                                	 <a href="/auction/orderDetailPage.do" id="orderNo" class="text-align">${pur.orderNo } </a>
                                </td>
                            </tr>
                            <tr class="white">
                                <td colspan="1" class="data border font width">
                                	<input type="button" disabled="true" class="white" style="border: none;" />
                                	<input type="button" disabled="true" style="border: none; " class="background-1" />
                                	${pur.productName }
                                </td>
                                <td rowspan="2" class="center border vertical-align font text-align">${pur.payAmount }원</td>
                                <td rowspan="2" class="center border vertical-align font text-align">${pur.farmName }</td>
                                <td colspan="2" class="center border font text-align delivery">${pur.deliveryCompany }  &nbsp;&nbsp;&nbsp;&nbsp;${pur.deliveryNo }</td>
                            </tr>
                            <tr class="white">
                                <td colspan="1" class="data border font width">
                                	<input type="button" disabled="true" class="white" style="border: none;" />
                                	<input type="button" disabled="true" style="border: none; " class="background-1" />
                                	${pur.productCount }&nbsp; 상자
                                </td>
                                <td colspan="2" class="center border font text-align delivery">${pur.dName }</td>
                            </tr>
                          
							</table>
						</form>
						<div id="memberInfo-box"></div>
						
					</div>
				</div>
			</div>
		</div>
	<c:import url="/WEB-INF/views/commons/footer.jsp"/>
</div>
</body>
</html>