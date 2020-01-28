<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%-- bootstrap, jquery lib, javascript CDN --%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- viewport --%>
<meta name="viewport" content="width=device-width" initial-scale="1">
<title>MyFirstDevWeb</title>
<style>
/* .help-block을 일단 보이지 않게 설정  */
#insertMemberForm .help-block {
	display: none;
}
/* glyphicon을 일단 보이지 않게 설정 */
#insertMemberForm .glyphicon {
	display: none;
}
</style>
<script type="text/javascript">
	$("#insertMemberFormBtn").prop("disabled", true); //최초 회원가입 버튼 비활성화 
	
	function showConfirm() { //취소 버튼 처리
		if (confirm("회원가입을 중지하고 메인화면으로 이동하시겠습니까?")) {
			location.href="main.jsp";
		  } else {
		  }
	}
</script>
</head>
<body>
<!-- header -->
<%@ include file="/default/header.jsp"%>
	<br>
	<div class="container" style="width: 30%; float:none; margin:0 auto">
	<form action="insertMember.do" method="post" id="insertMemberForm">
		<h1 align="center"><b>회원가입</b></h1>
		<br>
		<!-- 회원가입 목록 -->
		<div class="form-group has-feedback">
			<label class="control-label" for="id">아이디</label>
			<input type="text" class="form-control" name="id" id="id" placeholder="4~12자의 영문, 숫자 아이디 입력"/>
			<span class="help-block" id="falseErr">4~12자의 영문, 숫자만 가능합니다.</span>
            <span class="help-block" id="overlapErr">사용할 수 없는 아이디입니다. 다른 아이디를 입력해주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
		</div>
		<br>
		<div class="form-group has-feedback">
            <label class="control-label" for="pw">비밀번호</label>
            <input type="password" class="form-control" name="pw" id="pw" placeholder="4~12자의 영문, 숫자 비밀번호 입력"/>
            <span class="help-block" id="pwRegErr">4글자 이상 입력하세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <div class="form-group has-feedback">
            <label class="control-label" for="rePw"></label>
            <input type="password" class="form-control" name="rePw" id="rePw" placeholder="비밀번호 확인"/>
            <span class="help-block" id="rePwErr">비밀번호가 일치하지 않습니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <br>
        <div class="form-group has-feedback">
            <label class="control-label" for="name">이름</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="한글 2~6자 (영어, 특수문자 불가)"/>
            <span class="help-block" id="nameErr">올바른 형식이 아닙니다. 한글 2~6자로 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <br>
        <div class="form-group has-feedback">
            <label class="control-label" for="tel">휴대폰 번호</label>
            <input type="text" class="form-control" name="tel" id="tel" placeholder="('-') 제외 번호만 입력"/>
            <span class="help-block" id="telErr">올바른 휴대폰 번호 형식이 아닙니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
		<br>
		<div class="form-group has-feedback">
            <label class="control-label" for="email">이메일</label>
            <input type="text" class="form-control" name="email" id="email" placeholder="abc@naver.com"/>
            <span class="help-block" id="emailErr">올바른  이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
        </div>
        <br>
		<!-- 가입, 취소 버튼 -->
		<div class="form-group text-center">
  			<input type="submit" class="btn btn-primary" id="insertMemberFormBtn" value="회원가입" disabled="disabled">
			<input type="button" class="btn btn-danger" id="cancelBtn" value="취소" onclick="showConfirm();">
        </div>
		<br>
		<br>
		<br>
	</form>
</div>
<!-- 회원가입 검증 ajax 시작 -->
<script type="text/javascript">

 	$("#id").keyup(function() { //아이디 입력란에 keyup 이벤트 발생 시  함수 실행
	var id = $("#id").val(); 
	var idChk = /^[a-z0-9]{4,12}$/; //아이디 검증 정규식
	
	if (idChk.test(id)) { //아이디가 정규식을 통과하면 next();실행
    	$("#falseErr").hide(); //해당되지 않는 help block 메세지 숨김
    	$("#overlapErr").hide();
    	next();
	} else { //아이디가 정규식 통과하지 못한 경우
		$("#falseErr").show(); //id에 해당하는 help block 메세지 노출
		$("#overlapErr").hide(); 
		errorState("#id"); //아이디 입력칸에 에러 상태 아이콘 노출
		idChkStat = 0;
	}
	function next() { 
		var inputId = $("#id").val();
		console.log(inputId);
		$.ajax({
            data : {
            	id : inputId
            },
            url : "checkId.do",
            success : function(data) {
            	if(inputId == "" && data == '0') { //아이디 값이 없을 경우
                    $("#insertMemberFormBtn").prop("disabled", true); 
                    $("#falseErr").show(); 
                    $("#overlapErr").hide();
                    errorState("#id");
                } else if (data == '0') { //아이디 사용 가능 (중복이 아닌 경우)
                    $("#overlapErr").hide();
                	$("#falseErr").hide();
                    successState("#id");
                } else if (data == '1') { //아이디 중복일 경우
                    $("#insertMemberFormBtn").prop("disabled", true);
                    $("#overlapErr").show();
                    $("#falseErr").hide();
                    errorState("#id");
                }
            }
		}) //ajax 끝
	} //next 까지
	}) //id keyup까지
    $("#pw").keyup(function() {
        var pw = $("#pw").val();
        var pwChk = /^[A-Za-z0-9]{4,12}$/; //비밀번호 정규식
        
        if (pwChk.test(pw)) { //정규표현식 통과
        	$("#pwRegErr").hide();
        	successState("#pw");        
        } else { //통과하지 못한 경우
        	$("#pwRegErr").show();        
        	errorState("#pw"); 
        }
    })
    $("#rePw").keyup(function() {
        var rePw = $(this).val();
        var pw = $("#pw").val();
        
        if (rePw == pw) { //비밀번호 같을 경우
            $("#rePwErr").hide();
            successState("#rePw");
        } else { //다를 경우
            $("#rePwErr").show();
            errorState("#rePw");
        }
    })
    $("#name").keyup(function() {
        var name = $("#name").val();
        var nameChk = /^[가-힣]{2,6}$/; //이름 체크 정규식
        
        if (nameChk.test(name)) { //정규표현식 통과
            $("#nameErr").hide();
            successState("#name");
        } else { //통과하지 못한 경우
            $("#nameErr").show();
            errorState("#name");
        }
    })
    $("#tel").keyup(function() {
        var tel = $("#tel").val();
        var phoneChk = /(01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/; //휴대폰 번호 체크 정규식
        
        if (phoneChk.test(tel)) { //정규표현식 통과
            $("#telErr").hide();
            successState("#tel");
        } else { //통과하지 못한 경우
            $("#telErr").show();
            errorState("#tel");
        }
    })
    $("#email").keyup(function() {
        var email = $("#email").val();
        var emailChk = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/; //이메일 체크 정규식
        
        if (emailChk.test(email)) { //정규표현식 통과
            $("#emailErr").hide();
            successState("#email");
        } else { //통과하지 못한 경우
            $("#emailErr").show();
            errorState("#email");
        }
    })
    //성공 상태로 변경
    function successState(sel){
        $(sel)
        .parent()
        .removeClass("has-error")
        .addClass("has-success")
        .find(".glyphicon")
        .removeClass("glyphicon-remove")
        .addClass("glyphicon-ok")
        .show();
 
        $("#insertMemberFormBtn").removeAttr("disabled"); //회원가입 버튼 비활성화 해제
    }
    //에러 상태로 변경
     function errorState(sel){
        $(sel)
        .parent()
        .removeClass("has-success")
        .addClass("has-error")
        .find(".glyphicon")
        .removeClass("glyphicon-ok")
        .addClass("glyphicon-remove")
        .show();
 
       $("#insertMemberFormBtn").attr("disabled","disabled"); //회원가입 버튼을 비활성화
    }
    //가입버튼 클릭 시 최종적으로 공란이 있는지 확인
	$("#insertMemberFormBtn").click(function(){
		var id = $("#id").val();
		var pw = $("#pw").val();
		var rePw = $("#rePw").val();
		var name = $("#name").val();
		var tel = $("#tel").val();
		var email = $("#email").val();
		
		if (id.length == 0) {
			alert("아이디를 입력하세요");
			$("#id").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		} else if (pw.length == 0) {
			alert("비밀번호를 입력하세요");
			$("#pw").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		} else if (rePw.length == 0) {
			alert("비밀번호를 입력하세요");
			$("#rePw").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		} else if (name.length == 0) {
			alert("이름을 입력하세요");
			$("#name").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		} else if (tel.length == 0) {
			alert("휴대폰 번호를 입력하세요");
			$("#tel").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		} else if (email.length == 0) {
			alert("이메일을 입력하세요");
			$("#email").focus();
			$("#insertMemberFormBtn").prop("disabled", true);
		}
	})
</script>
<!-- footer -->
<%@ include file="/default/footer.jsp"%>
</body>
</html>