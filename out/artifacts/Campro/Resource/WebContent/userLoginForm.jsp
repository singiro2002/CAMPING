<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>

    <%--스타일 시트--%>
    <link href="css/login.css" rel="stylesheet"/>

</head>
<body onload="bodyOnload()">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/53a8c415f1.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/login.css">
</head>

<div class="wrap" action="userLoginPro.do" method="post" name="frm">
    <div class="login">
        <h2>Log-in</h2>
        <div class="login_sns">
            <li><a href=""><i class="fab fa-instagram"></i></a></li>
            <li><a href=""><i class="fab fa-facebook-f"></i></a></li>
            <li><a href=""><i class="fab fa-twitter"></i></a></li>
        </div>
        <div class="login_id">
            <h4>아이디</h4>
            <label for="user_id"></label><input type="email" name="user_id" id="user_id" placeholder="아이디">
        </div>
        <div class="login_pw">
            <h4>비밀번호</h4>
            <label for="user_pw"></label><input type="password" name="user_pw" id="user_pw" placeholder="비밀번호">
        </div>
        <div class="login_etc">
            <div class="checkbox">
                <label for="chk_id"></label><input type="checkbox" name="idcheck" id="chk_id" onclick="confirmSave(this)"> 아이디저장
            </div>
            <div class="forgot_pw">
                <a href="">비밀번호 찾기</a>
            </div>
        </div>
        <div class="submit">
            <input type="submit" value="submit">
        </div>
    </div>
</div>


<%-- <form id="form" action="userLoginPro.do" method="post" name="frm">
     <table border="1">
         <tr>
             <td>아이디</td>
             <td><input type="text" name="user_id" required="required">
                 <input id="chk_id" type="checkbox" name="idcheck" onclick="confirmSave(this)">아이디저장
             </td>
         </tr>
         <tr>
             <td>암호</td>
             <td><input type="password" name="user_pw" required="required"></td>
         </tr>
         <tr>
             <td><input type="submit" value="확인" onclick="chk()"></td>
             <td><input type="reset" value="취소"></td>
         </tr>
     </table>
 </form>


<p>
 <input type="button" value="아이디찾기" onclick="location.href='findUserIdForm.do'">
 <input type="button" value="비밀번호찾기" onclick="location.href='findUserPwForm.do'">
</p>
<p>
 <input type="button" value="회원가입" onclick="location.href='userAgree.do'">
</p>--%>
<script type="text/javascript">
    function confirmSave(checkbox) {
        let isRemember;

        if (checkbox.checked) {
            isRemember = confirm("이 PC에 로그인 정보를 저장하시겠습니까? PC방등의 공공장소에서는 개인정보가 유출될 수 있으니 주의해주십시오.");

            if (!isRemember)
                checkbox.checked = false;
        }
    }

    function chk() {
        if (chk().idcheck.checked)
            saveLogin(chk().user_id.value);
        else
            saveLogin("");
    }

    function saveLogin(user_id) {
        if (user_id !== "") {
            // userid 쿠키에 id 값을 1일간 저장
            setsave("user_id", user_id, 1);
        } else {
            // userid 쿠키 삭제
            setsave("user_id", user_id, -1);
        }
    }

    function setsave(user_id, value, exdays) {
        const exdate = new Date();
        exdate.setDate(exdate.getDate() + exdays);
        const cookieValue = escape(value)
            + ((exdays == null) ? "" : "; expires="
                + exdate.toUTCString());
        document.cookie = user_id + "=" + cookieValue;
    }

    function getCookie(user_id) {
        user_id = user_id + '=';
        const cookieData = document.cookie;
        let start = cookieData.indexOf(user_id);
        let cookieValue = '';
        if (start !== -1) {
            start += user_id.length;
            let end = cookieData.indexOf(';', start);
            if (end === -1)
                end = cookieData.length;
            cookieValue = cookieData.substring(start, end);
        }
        return unescape(cookieValue);
    }

    function deleteCookie(user_id) {
        const expireDate = new Date();
        expireDate.setDate(expireDate.getDate() - 1);
        document.cookie = user_id + "= " + "; expires="
            + expireDate.toUTCString();
    }

    function bodyOnload() {
        const chk_id = document.getElementById('chk_id');
        chk_id.user_id.value = getCookie("user_id");
        if (chk_id.user_id.value !== "")
            chk_id.chk_id.checked = true;
    }
</script>

<!-- ===============================================-->
<!--    JavaScripts-->
<!-- ===============================================-->
<script src="vendors/@popperjs/popper.min.js"></script>
<script src="vendors/bootstrap/bootstrap.min.js"></script>
<script src="vendors/is/is.min.js"></script>
<script src="https://polyfill.io/v3/polyfill.min.js?features=window.scroll"></script>
<script src="vendors/feather-icons/feather.min.js"></script>
<script src="js/theme.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;700&amp;display=swap" rel="stylesheet">

</body>
</html>