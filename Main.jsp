<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>진단표</title>
</head>
<body>

<h2>진단표</h2>

<form action="Save.jsp" method="post">
이름 : <input type="vector" name="name" value=''/><br>
체온 : <input type="vector" name="temp" value=''/> <br>
연락처 : <input type="vector" name="address" value=''/><br>

<br>
37.5도 이상 발열이 있습니까?   <h5>예 아니요 </h5>                                          
<input type="checkbox" id="cb1">
<input type="checkbox" id="cb1"><br/><br/><br/>
잦은 기침 증상이나 인후통, 일반적인 감기 증상이 있습니까?   <h5>예 아니요</h5>
<input type="checkbox" id="cb1">                                            
<input type="checkbox" id="cb1"><br/><br/><br/>
최근 14일 이내에 확진자 및 접촉자와 접촉한 적이 있습니까?   <h5>예 아니요</h5>
<input type="checkbox" id="cb1">                                            
<input type="checkbox" id="cb1"><br/><br/><br/>
최근 14일 이내에 해외여행을 하셨거나, 해외에서 오신 지인을 만난적이 있습니까?   <h5>예  아니오</h5>
<input type="checkbox" id="cb1">                                            
<input type="checkbox" id="cb1"><br/><br/><br/>
동거인 중 고열 및 감기증상이 있습니까?   <h5>예  아니오</h5>
<input type="checkbox" id="cb1">                                            
<input type="checkbox" id="cb1"><br/><br/><br/>
최근 확진자의 동선과 겹치는 장소에 다녀오셨습니까?   <h5>예  아니오</h5>
<input type="checkbox" id="cb1">                                            
<input type="checkbox" id="cb1"><br/><br/><br/>
위와 같이 개인정보를 수집 이용하는데 동의하십니까?
<input type="checkbox" id="cb1"><br/><br/><br/>           

<input type="submit" value="저장하기">
</form>

</body>
</html>