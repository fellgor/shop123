<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--jQuery 라이브러리 --%>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    
<%--jstl 라이브러리 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <!--font-->
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Atkinson+Hyperlegible:ital@1&family=Lobster&family=Nanum+Gothic&family=Nanum+Myeongjo:wght@700&family=Noto+Sans+KR:wght@700&family=Pacifico&display=swap" rel="stylesheet">    

   <!--부트스트랩-->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">


<style>
    *
    {
        box-sizing: border-box;
        font-family: Nanum Gothic;
    }

    
    #farmPwdWrap
    {
        width: 100%;
        height: 100vh;
        margin: 0 auto;
    }
    

    #farmPwdArea1
    {
        width: 100%;
        height: 14vh;
        border-bottom: 1px solid #767977;
        font-size: 3.5vmin;
        font-weight: bold;
        text-align: center;
        line-height: 13vh;
        color: #626463;
        letter-spacing:3px
            
    }
    #farmPwdArea2
    {
        width: 100%;
        height: 10vh;   
    }
    #formArea
    {
        width: 100%;
        height: 100%;
        margin: 0 auto; 
    }
    
    #farmPwdArea3
    {
        width: 100%;
        height: 48vh;
    }
    
    #lockedImg
    {
       width: 10vw; 
       height:13vh;
       position: relative;
       left: 45vw;
    }
    .titleText
    {
        font-size: 2.2vmin;
        display: inline-block;
        width: 50%;
        font-weight: bold;
        position: relative;
        left: 20vw;
    }

    .input-style
    {
        height: 3vh;
        width: 30vw;
        font-size: 2.2vmin;
        text-align: center;
        color: #2A2A2A;
        padding: 18px;
        margin-top: 30px;
        border: 0.5px solid #E5E5E5;
        display: inline-block;
    }
    .btn 
    {
        height: 7vh;
        width: 20vw;
        border-radius: 20px;
        margin-left: 30px;
        font-weight: bold;
        color: #198754;
        background-color: white;
        position: relative;
        top: 7vh;
        left: 24vw;
        font-size: 1.8vmin;
    }


</style>  


</head>
<body>
	    <div id="farmPwdWrap">
            <div id="farmPwdArea1">비밀번호 변경</div>
            <div id="farmPwdArea2">
                <img src="/resources/farm/image/자물쇠.png" id="lockedImg">
            </div>
            <div id="farmPwdArea3">
                <div id="formArea">
                    <form action=" " method="post">
                         <p class="titleText">현재 비밀번호</p>
                                <input type="password" class="input-style" name="userPwd" placeholder="비밀번호"><br>
                                <p class="titleText">신규 비밀번호</p>
                                <input type="password" class="input-style" name="userPwd_new" placeholder="신규 비밀번호"><br>
                                <p class="titleText">신규 비밀번호 재확인</p>
                                <input type="password" class="input-style" name="userPwd_new_re" placeholder="신규 비밀번호 재확인"><br>

                               
                                <button type="submit" class="btn btn-success">변경완료</button>    
                                <button type="button" class="btn btn-success" id="changeCancel">변경취소</button>
                        </form>
                    </div>
               </div>
           </div>
    
<script>
    $('#changeCancel').click(function(){
        
       window.close();
    });
    
    
</script>  



</body>
</html>