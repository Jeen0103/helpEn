<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="_inc/head.jsp"%>
<script>
var style = '0' ;
if (style == "") {
	document.getElementById('makeStyle').value = "0" ;
}
else {
	document.getElementById('makeStyle').value = temp ;
}
var topic = '0' ;
if (topic == ""){
	document.getElementById('makeTopic').value = "0" ;
}
else {
	document.getElementById('makeTopic').value = temp ;
}
var length = '0' ;
if (length == "") {
	document.getElementById('makeLength').value = "0" ;
}
else {
	document.getElementById('makeLength').value = temp ;
}
</script>
<section class="probootstrap_section">

<div class="container">
	<div class="row text-center mb-5 probootstrap-animate fadeInUp probootstrap-animated">
	</div>
	<div class="row">
		<div class="col-md-12 m-auto">
		<form name="selectCtr" method="post" class="probootstrap-form">
			<div class="d-flex">
				<div class="form-group col-md-3">
					<select id="makeStyle" class="form-control custom-select">
						<option value="0" >모든형식</option>
						<option value="1"> S+V</option>
						<option value="2"> S+V+C</option>
						<option value="3"> S+V+O</option>
						<option value="4"> S+V+O+O</option>
						<option value="5"> S+V+O+C</option>
						<option value="q"> 의문문</option>
						<option value="e"> 감탄문</option>
						<option value="a"> 문답 QA</option>
					</select>
				</div>
				<div class="form-group col-md-3">
					<select id="makeTopic" name="makeTopic" class="form-control custom-select">
						<option value="0"> 모든토픽</option>
						<option value="1"> 일상생활</option>
						<option value="2"> 의식주</option>
						<option value="3"> 건강운동</option>
						<option value="4"> 계절날씨</option>
						<option value="5"> 학교교육</option>
						<option value="6"> 인문사회</option>
						<option value="7"> 자연</option>
						<option value="8"> 과학기술</option>
						<option value="9"> 쇼핑</option>
						<option value="a"> 취미</option>
						<option value="b"> 여행</option>
						<option value="c"> 시간</option>
						<option value="d"> 문화예술</option>
						<option value="e"> Business Letter</option>
					</select>
				</div>
				<div class="form-group col-md-3">
					<select id="makeLength" class="form-control custom-select">
						<option value=0> 모든길이</option>
						<option value=1> 1-5단어</option>
						<option value=2> 6-10단어</option>
						<option value=3> 11-15단어</option>
						<option value=4> 16-20단어</option>
						<option value=5> 21-25단어</option>
						<option value=6> 26단어이상</option>
					</select>
				</div>
				<div class="d-flex justify-content-end align-items-center">
				  <input type="button" id="schBtn" value="검색" class="btn btn-primary btnSize">
				</div>
			</div>
		</form>        
		</div>
	</div>
	<br/>
	<form name="selectCtr" method="post" class="probootstrap-form">
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">작문한글</label>
		  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
				  <label class="form-check-label" for="flexCheckDefault">
				    첫 문장 :
				  </label>
			</div>
			<div class="form-check">
			  <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked">
				  <label class="form-check-label" for="flexCheckChecked">
				    힌트 :
				  </label>
			</div>
		</div>
		<br/>
		<div class="mb-3">
		  <label for="exampleFormControlTextarea1" class="form-label">작문영어</label>
		  <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
		</div>
		<button type="button" class="btn btn-primary">Primary</button>
		<button type="button" class="btn btn-secondary">Secondary</button>
		<button type="button" class="btn btn-success">Success</button>
		<button type="button" class="btn btn-danger">Danger</button>
		<button type="button" class="btn btn-warning">Warning</button>
		<button type="button" class="btn btn-info">Info</button>
		<button type="button" class="btn btn-light">Light</button>
		<button type="button" class="btn btn-dark">Dark</button>
	</form>
</div>
</section>
<!-- END sect -->


<hr/><br/><br/><br/><br/><br/><br/><br/>
<table style="width:100%; border:0px;" cellspacing="0" cellpadding="2" bordercolor="white">
				<tr>
					<form action=""> <!-- 마지막 단어찾기에만 해당되지만 두 줄로 나누어지는 것을 방지하기 위해-->
					<!-- 콤보박스 (dropdown) 3개 처리 -->
					<td align="left"> 
						<select name="comboCat" id="comboCat" onChange="getCat(this)">
							<option value="0"> 모든형식</option>
							<option value="1"> S+V</option>
							<option value="2"> S+V+C</option>
							<option value="3"> S+V+O</option>
							<option value="4"> S+V+O+O</option>
							<option value="5"> S+V+O+C</option>
							<option value="q"> 의문문</option>
							<option value="e"> 감탄문</option>
							<option value="a"> 문답 QA</option>
						</select>
		
						<script>
							var temp = '0' ;
							if (temp == "") {
								document.getElementById('comboCat').value = "0" ;
							}
							else {
								document.getElementById('comboCat').value = temp ;
							}
						</script>
						
						<select name="comboTop" id="comboTop" onChange="getTop(this)">
							<option value="0"> 모든토픽</option>
							<option value="1"> 일상생활</option>
							<option value="2"> 의식주</option>
							<option value="3"> 건강운동</option>
							<option value="4"> 계절날씨</option>
							<option value="5"> 학교교육</option>
							<option value="6"> 인문사회</option>
							<option value="7"> 자연</option>
							<option value="8"> 과학기술</option>
							<option value="9"> 쇼핑</option>
							<option value="a"> 취미</option>
							<option value="b"> 여행</option>
							<option value="c"> 시간</option>
							<option value="d"> 문화예술</option>
							<option value="e"> Business Letter</option>
						</select>
						
						<script>
							var temp = '' ;
							if (temp == ""){
								document.getElementById('comboTop').value = "0" ;
							}
							else {
								document.getElementById('comboTop').value = temp ;
							}
						</script>
						
						<select name="comboWor" id="comboWor" onChange="getWor(this)">
							<option value=0> 모든길이</option>
							<option value=1> 1-5단어</option>
							<option value=2> 6-10단어</option>
							<option value=3> 11-15단어</option>
							<option value=4> 16-20단어</option>
							<option value=5> 21-25단어</option>
							<option value=6> 26단어이상</option>
						</select>
					
						<script>
							var temp = '' ;
							if (temp == "") {
								document.getElementById('comboWor').value = "0" ;
							}
							else {
								document.getElementById('comboWor').value = temp ;
							}
						</script>

						<select name="comboSco" id="comboSco" onChange="getSco(this)">
							<option value=0> 모든문장</option> 
							<option value=1> &#128151; 최애</option>
							<option value=2> &#128148; 분발</option>
							<option value=3> &#128152; 완벽</option>
						</select>

						<script>
							var temp = '' ;
							if (temp == "") {
								document.getElementById('comboSco').value = "0" ;
							}
							else {
								document.getElementById('comboSco').value = temp ;
							}
						</script>
						<!-- 단어 찾기 -->
														<input style="width:100px" type="search" name="findWord" id="findWord"  autocomplete="off" onKeyPress="if(event.keyCode==13){ findW(form.findWord.value); return false; }" />
							<input style="width:50px" type="button" id="bFind" onclick="findW(form.findWord.value)" value="찾기" />
							<script>
								document.getElementById('findWord').value = '' ;
							</script>
					</td>
					</form>
				</tr>
				<tr>
					<!-- 한글 문제를 보여주는 textarea -->
					<td align="left">
						<textarea name="taHan" rows="4" style="width:98%; color:black; font-family: Arial; font-size:16px;" readonly="readonly">바가지 쓰지 마세요.</textarea><br />
					</td>
				</tr>
				<tr>
					<td align="left">
					<table style="width:100%; border:0px;" cellspacing="0" cellpadding="2" bordercolor="white">
						<tr><td style="width:40%" align="left">
						<!-- 첫단어에 관한 checkbox와 text line (input) -->
						<script type="text/javascript">
							var jsfirst = "Don’t";   
						</script>
						<input style="width:20px;" type="checkbox" name="chkFirst" onclick="toggle(this, 'showFirst')" />첫단어:
						
						<style>#showFirst {visibility:hidden;}</style>
						<span id='showFirst'>
							<script type="text/javascript">
								document.write(jsfirst);  
							</script>
						</span>
						</td>
						
						<td width="60%" align="left">
						<!-- 힌트에 관한 checkbox 와 text line (input) -->
						<script type="text/javascript">
							var jshint = "ripped off.";   
						</script>
						<input style="width:20px;" type="checkbox" name="chkHint" onclick="toggle(this, 'showHint')" />힌트:
    
						<style>#showHint {visibility:hidden;}</style>
						<span id='showHint'>
							<script type="text/javascript">
								document.write(jshint);  
							</script>
						</span>
						</td></tr>
				</table>
					
				</tr>
				<tr>
					<!-- 연습장 Try -->
					<td align="left">
						<form name="koen">
							<textarea name="taTry" id="taTry" rows="4" style="width:98%; font-family:Arial; background-color:lightyellow; color:blue; font-size:18px;" onkeydown="pressed(event)"></textarea>
							<!-- 사용자가 엔터키를 눌렀을 경우, onkeydown="pressed(event)"로 처리한다. -->
						</form>
						<script language="JavaScript"> 
							document.koen.taTry.focus(); 							document.koen.taTry.value += ""; 
						</script>
					</td>
				</tr>
				<tr>
					<!-- 정답 보여주는 곳 -->
					<td align="left">
						<style>#div1 {visibility:hidden;}</style>
						<div id="div1" style="font-family:Arial; font-size:16px;">
							
						</div>
					</td>
				</tr>		
				<tr>
					<td align="left">
						<script type="text/javascript">
							var jsclue = "<i>-cont.</i> do not의 축약형: <font color='blue'>don't</font><br>-pv. 바가지를 쓰다: <font color='blue'>get ripped off</font><br><br>";   
						</script>
						<input style="width:20px;" type="checkbox" name="chkClue" id="chkClue" value=""  onclick="toggle(this, 'showClue')" />힌트2:<br>
						<style>#showClue {visibility:hidden;}</style>
						<div id="showClue" style="font-family:Arial; font-size:16px;">
							<script type="text/javascript">
								document.write(jsclue);  
							</script>
						</div>
					</td>
				</tr>
			</table>
		</td>
		
		<td style="width:12%;" valign="top">
			<table style="width:100%; border:0px solid;" cellspacing="0" cellpadding="2" bordercolor="white">
				<tr height="24">
					<!-- 전체 레코드 갯수 보여주기 -->
					<td style="text-align:center;">
						<font face="Arial" size = "2">
							100 문장						</font>
					</td>
				</tr>
				<tr height="30" valign="bottom">
					<td style="text-align:center;">
												<button style="width:100px;" accesskey="n" id="newOne" onclick="getNewOne()"><u>N</u>ew One</button> 
					</td>
				</tr>
				<tr height="25" valign="bottom">
					<!-- 다시 시도 버튼 -->
					<td style="text-align:center;">
						<button onclick="clearTA();" accesskey="a" style="width:100px">Try <u>A</u>gain</button>
					</td>
				</tr>
				<tr height="50" valign="bottom">
					<td style="text-align:center;">
					<!-- 정답을 보여주기 버튼 -->
						<button onclick=showeng('on','div1') style="width:100px">Answer</button>
					</td>
				</tr>
				<tr height="25" valign="bottom">
					<!-- 정답 숨기기 버튼-->
					<td style="text-align:center;">
												<button onclick=hideeng('off','div1') style="width:100px">Hide Answer</button>
					</td>
				</tr>
				<tr height="50" valign="bottom">
					<td style="text-align:center;">
					<!-- 문장을 읽어준다 -->
						<button onclick=textToSpeechKo() accesskey="k" style="width:100px">Speech-<u>K</u>o</button>
					</td>
				</tr>
				<tr height="25" valign="bottom">
					<td style="text-align:center;">
					<!-- 문장을 읽어준다 -->
						<button onclick=textToSpeechEn() accesskey="s" style="width:100px"><u>S</u>peech-En</button>
					</td>
				</tr>
				<tr height="25">
					<td style="text-align:center;">
						<!-- 모든 소리를 멈추게 한다 (에러시 복구 기능) -->
						<button style="width:100px;" onclick=speechCancel()>Stop Sound</button>
					</td>
				</tr>
				
				<tr height="25" valign="bottom">
					<td style="text-align:center;">
					단어 정답율<br><u>&nbsp;&nbsp;190525&nbsp;&nbsp;</u><br>360594<br>(52.8%)					</td>
				</tr>

				<tr height="25" valign="bottom">
					<td style="text-align:center;">
											</td>
				</tr>
			</table>
		</td>
	</tr>
</table>


<%@ include file="_inc/foot.jsp"%>