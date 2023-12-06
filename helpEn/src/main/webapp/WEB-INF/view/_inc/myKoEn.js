<!-- ********************** functions ******************************** -->




<script type="text/javascript">
function refresh()
{
	var pat = '0';
	var top = '';
	var wor = '';
	var fin = '';
	var sco = '';

	var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin + "&sco=" + sco;
	window.location.href="index.php" + frm;
	alert('hello');
}	

function savethis(){
	var pat = '0';
	var top = '';
	var wor = '';
	var fin = '';
	var sco = '';

	var uid = "";
	var keid = "91";

	var jtry=document.getElementById('taTry').value;
	var jeng=document.formCheck.formvar.value;
	if (jtry == jeng)
		var yn = 1;
	else
		var yn = 0;
	
	if (uid == "")
	{
		window.alert("문장 저장은 로그인 후 가능합니다.");
	}
	else
	{
		if (sco == '0' || sco == '')
		{
			// 모든 문장을 선택한 상태
			var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin + "&uid=" + uid + "&keid=" + keid + "&yn=" + yn;
			window.location.href="index.php" + frm;		
		}
		else
		{
			var frm = "?sco=" + sco + "&uid=" + uid + "&keid=" + keid + "&yn=" + yn;
			window.location.href="index.php" + frm;
		}
	}
}

function removethis() {
	var pat = '0';
	var top = '';
	var wor = '';
	var fin = '';
	var sco = '';

	var uid = "";
	var keid = "91";

	var jtry=document.getElementById('taTry').value;
	var jeng=document.formCheck.formvar.value;

	var yn = -1;
	
	if (uid == "")
	{
		window.alert("문장 제거는 저장한 문장이 있는 상태에서 로그인 후 가능합니다.");
	}
	else
	{
		if (sco == '0' || sco == '')
		{
			// 모든 문장을 선택한 상태
			var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin + "&uid=" + uid + "&keid=" + keid + "&yn=" + yn;
			window.location.href="index.php" + frm;		
		}
		else
		{
			var frm = "?sco=" + sco + "&uid=" + uid + "&keid=" + keid + "&yn=" + yn;
			window.location.href="index.php" + frm;
		}
	}
}

</script>

<!-- js 함수들 -->
<script type="text/javascript">

var c=false;
// 포커스가 인풋 박스안에 있을때 배경이미지 지우기
function ch (valueid) {
    if(valueid ==  'm_id')  document.login.m_id.style.backgroundImage="";
    else document.login.m_pw.style.backgroundImage="";
    c=true;
}
// 포커스가 인풋 박스를 벗어났을때 배경이미지 살리기 (입력값이 있으면 살리지 않기)
function chout (valueid) {
    if(valueid ==  'm_id') {
     if(!document.login.m_id.value) document.login.m_id.style.backgroundImage="url(./images/id.gif)";
    }
    else {
     if(!document.login.m_pw.value) document.login.m_pw.style.backgroundImage="url(./images/passwd.gif)";
    }
    c=true;
}

function showeng(y,x){
	var jtry=document.getElementById('taTry').value;
	var jeng='Don’t get ripped off.';
	
	jtry = jtry.replace(/\r\n/g, ' ');  // remove enter key
	jtry = jtry.replace(/\s\s+/g, ' ');   // multiple spaces, tabs, newlines, just replace \s\s+ with ' '
	jtry = jtry.replace(/ '/g, " ‘");
	jtry = jtry.replace(/'/g, "’");
	jtry = jtry.trim();

	var jtryarray = jtry.split(" ");
	var jengarray = jeng.split(" ");
	var bfound = false;
	var jcount = 0;
	
	var jtrylen = jtryarray.length;
	var jenglen = jengarray.length;
	
	if (jtrylen == 0) {
		jtrylen = 1;
	}
	
	// count the correct words
	jcount = 0;
	for (i = 0; i < jenglen; i++) {
		bfound = false;
		for (j = 0; j < jtrylen; j++) {
			if (jengarray[i].valueOf() == jtryarray[j].valueOf()) {
				bfound = true;
				jcount++;
				break;
			}
		}
	}


	//focus the try
	var jblack = "<br>&#9899;&nbsp;";
	var jsmile = "<br>&#128522;&nbsp;"; // smiling face with smiling eyes
	var jkiss = "<br>&#128525;&nbsp;";  // smiling face with heart-shaped eyes
	var jengstyle = "";
	var jengtry = "";
	
	for (j = 0; j < jtrylen; j++) {
		bfound = false;
		for (i = 0; i < jenglen; i++) {
			if (jtryarray[j].valueOf() == jengarray[i].valueOf()) {
				bfound = true;
				break;
			}
		}
		if (bfound == true) {
			jengtry += "<font color = 'blue'>" + jtryarray[j] + "</font>" + " ";
		} else {
		//	jcount--;
			jengtry += "<font color = 'red'>" + jtryarray[j] + "</font>" + " ";
		}
	}
	
	jengtry = jengtry.trim();
	
	if (jcount > jenglen) {
		jcount = jenglen;
	}
	
	var score1 = Math.round(100.0 * jcount / jenglen);
	var jcorrect = " (단어: " + score1 + "%)"
	if (score1 > 99) {
		jengtry = jengtry.replaceAll("<font color = 'blue'>", "").replaceAll("</font>", "");
		jengtry = "<mark>" + jengtry + "</mark>";
		jcorrect += " <font color='red'><b>\u2713</b></font>";
	}

	if (score1 > 99) {
		jengstyle = jsmile + jengtry + jcorrect;
	} else {
		jengstyle = jblack + jengtry + jcorrect;
	}
	
	//어순비교
	jgood = 0;
	var jbad = 0;
	bfound = false;
	jengtry = "";
	
	if (jtryarray[0].valueOf() == jengarray[0].valueOf()) {
		jgood++;
		jengtry += "<font color = 'blue'>" + jtryarray[0] + "</font>";
	} else {
		jbad++;
		jengtry += "<font color = 'red'>" + jtryarray[0] + "</font>";
	}
	
	for (i = 0; i < jtrylen - 1; i++) {
		bfound = false;
		for (j = 0; j < jenglen - 1; j++) {
			if (jtryarray[i].valueOf() == jengarray[j].valueOf()) {
				if (jtryarray[i + 1].valueOf() == jengarray[j + 1].valueOf()) {
					bfound = true;
					break;
				}
			}
		}
		if (bfound == true) {
			jgood++;
			jengtry += " " + "<font color = 'blue'>" + jtryarray[i + 1] + "</font>";			
		} else {
			jbad++;
			jengtry += " " + "<font color = 'red'>" + jtryarray[i + 1] + "</font>";
		}
	}

	jengtry = jengtry.trim();

	// 역으로 다시 어순 테스트
	bfound = false;

	if (jengarray[0].valueOf() == jtryarray[0].valueOf()) {
		jgood++;
	} else {
		jbad++;
	}
	
	for (i = 0; i < jenglen - 1; i++) {
		bfound = false;
		for (j = 0; j < jtrylen - 1; j++) {
			if (jengarray[i].valueOf() == jtryarray[j].valueOf() && jengarray[i + 1].valueOf() == jtryarray[j + 1].valueOf()) {
				bfound = true;
				break;
			}
		}
		if (bfound == true) {
			jgood++;
		} else {
			jbad++;
		}
	}
	
	jhap = jgood + jbad;
	var score2 = Math.round(100.0 * jgood / jhap);
	
	jcorrect = " (어순: " + score2 + "%)"
	if (score2 > 99) {
		jengtry = jengtry.replaceAll("<font color = 'blue'>", "").replaceAll("</font>", "");
		jengtry = "<mark>" + jengtry + "</mark>";
		jcorrect += " <font color='red'><b>\u2713</b></font>";
	} 
	
	if (score2 > 99) {
		jengstyle = jengstyle + jkiss + jengtry + jcorrect;
	} else {
		jengstyle = jengstyle + jblack + jengtry + jcorrect;
	}
	jengstyle += "<br>";
	
	//show the answer
	jengstyle += "<br>&#9898;&nbsp;";
	var jmobum = "";
	
	for (i = 0; i < jenglen; i++) {
		bfound = false;
		for (j = 0; j < jtrylen; j++) {
			if (jengarray[i].valueOf() == jtryarray[j].valueOf()) {
				bfound = true;
				break;
			}
		}
		if (bfound == true) {
			jmobum += jengarray[i] + " ";
		} else {
			jmobum += "<font color = 'orange'>" + jengarray[i] + "</font>" + " ";
		}
	}

	jmobum = jmobum.trim();
	
	jengstyle += "<font color = 'blue'>" + jmobum + "</font>" + " (모범답안)<br><br>";
	jengstyle += "<button onclick=savethis()>&#128151; 이 문장 좋아요</button>&nbsp;";
	jengstyle += "<button onclick=removethis()>&#9825; 최애 목록에서 제거</button><br><br>";
	
	var	jhan = '바가지 쓰지 마세요.';
	jengstyle = addAccent(jengstyle, jhan);
	
	document.getElementById("div1").innerHTML = jengstyle;
	
	t=document.getElementById(x).style;
	t.visibility=(y=='on')?'visible':'hidden';
}

function hideeng(y,x){
	t=document.getElementById(x).style;
	t.visibility=(y=='on')?'visible':'hidden';
}
// to show hint after you click the checkbox
function toggle(chkbox, group) { 
    var visSetting = (chkbox.checked) ? "visible" : "hidden"; 
    document.getElementById(group).style.visibility = visSetting; 
} 
function swap(radBtn, group) { 
    var modemsVisSetting = (group == "modems") ? ((radBtn.checked) ? "" : "none") : "none"; 
    document.getElementById("modems").style.display = modemsVisSetting; 
}
function textToSpeechKo() {
	// 한국 문장을 들려준다.
	jspeech = '바가지 쓰지 마세요.';
	msg = new SpeechSynthesisUtterance(jspeech);
	msg.rate = 1.0;
	msg.pitch = 1.0;
	msg.lang = 'ko-KR';
	window.speechSynthesis.speak(msg);
}
function textToSpeechEn() {
	// 영어 문장을 들려준다.
	jengspeech = 'Don’t get ripped off.';
	msg = new SpeechSynthesisUtterance(jengspeech);
	msg.rate = 0.8;
	msg.pitch = 0.8;
	msg.lang = 'en-US';
	window.speechSynthesis.speak(msg);
}
function clearTA(){   // 다시 연습을 합니다.
	showeng('off','div1')     // 정답을 함께 사라지게 함
	//document.getElementById('taEng').value="";
	document.getElementById('taTry').value="";
	document.koen.taTry.focus();
}
function getCat(thelist){
  var pat = '0';
  var top = '';
  var wor = '';
  var fin = '';

  var patidx = thelist.selectedIndex;
  var pat = thelist.options[patidx].value;
  
  // 폼을 새로 로드한다.
  var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin;
  window.location.href="index.php" + frm;
}
function getTop(thelist){
  var pat = '0';
  var top = '';
  var wor = '';
  var fin = '';

  var topidx = thelist.selectedIndex;
  var top = thelist.options[topidx].value;

  // 폼을 새로 로드한다.
  var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin;
  window.location.href="index.php" + frm;
}
function getWor(thelist){
  var pat = '0';
  var top = '';
  var wor = '';
  var fin = '';

  var woridx = thelist.selectedIndex;
  var wor = thelist.options[woridx].value;

  // 폼을 새로 로드한다.
  var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin;
  window.location.href="index.php" + frm;
}

function getSco(thelist){
	var pat = '0';
	var top = '';
	var wor = '';
	var fin = '';
	var sco = '';
	
	var scoidx = thelist.selectedIndex;
	var sco = thelist.options[scoidx].value;
	
	if (sco == '0' || sco == '')
	{
		var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin;
		window.location.href="index.php" + frm;
	}
	else
	{
		var frm = "?sco=" + sco;
		window.location.href="index.php" + frm;
	}
}

function findW(myWord){
  var pat = '0';
  var top = '';
  var wor = '';
  var fin = '';

	fin = myWord.replace(/'/g, "’").replace(/"/g, "”");
	
	// 폼을 새로 로드한다.
	var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin;
	window.location.href="index.php" + frm;
  
//  alert(myWord)
}

function getNewOne() {
	// remove from my를 실행한 후, 주소창에 yn=-1값이 그대로 남아 있어, New One을 reload()로 했을 경우 에러 발생해서, inclick를 참고로 구현한 함수 (2021-1-21)
	var pat = '0';
	var top = '';
	var wor = '';
	var fin = '';
	var sco = '';
  
  var num = Math.round(jgood / 2.0);  // 어순 검사하면서 앞 뒤로 두 번 체크하니 여기서 절반만 취하자
  var den = Math.round(jhap / 2.0);

	if (sco == '' || sco == '0') {
		var frm = "?pat=" + pat + "&top=" + top + "&wor=" + wor + "&fin=" + fin + "&num=" + num + "&den=" + den;
		window.location.href="index.php" + frm;
	} else {
		var frm = "?sco=" + sco + "&num=" + num + "&den=" + den;
		window.location.href="index.php" + frm;
	}

}

function pressed(e) {
	// Has the enter key been pressed?  사용자가 문장입력 후, Enter 키를 눌렀을 경우
	if ((window.event ? event.keyCode : e.which) == 13) {
		showeng('on','div1');
	}
}

function speechCancel() {
	window.speechSynthesis.cancel();
}

function addAccent(e, k) {
	var res = "";
	res = e.replaceAll("fiance", "fiancé");
	res = res.replaceAll("cafe", "café");
	res = res.replaceAll("Cafe", "Café");
	res = res.replaceAll("caféteria", "cafeteria");
	res = res.replaceAll("Caféteria", "Cafeteria");
	res = res.replaceAll("cliche","cliché");

	if (k.indexOf("이력서") > -1) {
		res = res.replaceAll("esume", "esumé");
	}
	return res;
}
</script> /**
 * 
 */