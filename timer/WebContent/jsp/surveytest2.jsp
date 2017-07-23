<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<!-- Basic Page Needs
        ================================================== -->
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="icon" type="image/png" href="../images/favicon.png">
<title>설문조사</title>
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="">
<!-- Mobile Specific Metas
        ================================================== -->
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Template CSS Files
        ================================================== -->
<!-- Twitter Bootstrs CSS -->
<link rel="stylesheet" href="../css/bootstrap.css">
<!-- 나만의 css -->
<link rel="stylesheet" href="../css/custom.css">
<!-- Template Javascript Files
<!-- jquery -->
<script src="../js/jquery.min.js"></script>
<!-- bootstrap js -->
<script src="../js/bootstrap.min.js"></script>
<!--================================================== -->
<title>Insert title here</title>

<script>	
var xhr = new XMLHttpRequest();
var url = 'http:/openapi.animal.go.kr/openapi/service/rest/abandonmentPublicSrvc/abandonmentPublic'; /*URL*/
var queryParams = '?' + encodeURIComponent('ServiceKey=pFgcEMtxZueqIzaDsd4rZ4yVCaBNK2t68oBu3BUwEcNDsPU6tXmQGP79pqPJtgq3oLfNz42UgdO2cmu2s9nrlg%3D%3D'; /*Service Key*/
queryParams += '&' + encodeURIComponent('bgnde') + '=' + encodeURIComponent('20140601)); /*유기날짜 (검색 시작일) (YYYYMMDD) */
queryParams += '&' + encodeURIComponent('endde') + '=' + encodeURIComponent('20140630)); /*유기날짜 (검색 종료일) (YYYYMMDD) */
queryParams += '&' + encodeURIComponent('upkind') + '=' + encodeURIComponent('417000)); /*축종코드 - 개 : 417000 - 고양이 : 422400 - 기타 : 429900 */
queryParams += '&' + encodeURIComponent('kind') + '=' + encodeURIComponent(')); /*품종코드 (품종 조회 OPEN API 참조) */
queryParams += '&' + encodeURIComponent('upr_cd') + '=' + encodeURIComponent(')); /*시도코드 (시도 조회 OPEN API 참조) */
queryParams += '&' + encodeURIComponent('org_cd') + '=' + encodeURIComponent(')); /*시군구코드 (시군구 조회 OPEN API 참조) */
queryParams += '&' + encodeURIComponent('care_reg_no') + '=' + encodeURIComponent(')); /*보호소번호 (보호소 조회 OPEN API 참조) */
queryParams += '&' + encodeURIComponent('state') + '=' + encodeURIComponent('notice)); /*상태 - 전체 : null(빈값) - 공고중 : notice - 보호중 : protect */
queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1)); /*페이지 번호*/
queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10)); /*페이지당 보여줄 개수*/
xhr.open('GET', url + queryParams);
xhr.onreadystatechange = function () {
    if (this.readyState == 4) {
        alert('Status: '+this.status+' Headers: '+JSON.stringify(this.getAllResponseHeaders())+' Body: '+this.responseText);
    }
};

</script>

</head>
<body>

</body>
</html>