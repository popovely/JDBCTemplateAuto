<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/commons/header.jsp" %>
<body>
<script type="text/javascript">
	function checkValidate(f){
		if(f.name.value==""){
			alert("이름을 입력하세요");
			f.name.focus();
			return false;
		}
		/* 이미 패스워드 검증을 했으므로 필요없음
		if(f.pass.value==""){
			alert("패스워드를 입력하세요");
			f.pass.focus();
			return false;
		}
		 */
		if(f.title.value==""){
			alert("제목을 입력하세요");
			f.title.focus();
			return false;
		}
		if(f.contents.value==""){
			alert("내용을 입력하세요");
			f.contents.focus();
			return false;
		}
	}
</script>
<div class="container">
    <!-- Top영역 -->
    <%@ include file="/resources/commons/top.jsp" %>
    <!-- Body영역 -->
    <div class="row">
        <!-- Left메뉴영역 -->
        <%@ include file="/resources/commons/left.jsp" %>
        <!-- Contents영역 -->
        <div class="col-9 pt-3">
            <h3>글 수정 - <small>자유게시판</small></h3>
            
            <form name="writeFrm" method="post" 
				action="./editAction.do"
				onsubmit="return checkValidate(this);">
            	<!-- 첨부파일 제외
            	enctype="multipart/form-data"> -->
            <input type="hid den" name="idx" value="${ viewRow.idx }" />
			<input type="hid den" name="nowPage" value="${ param.nowPage }" />
			<input type="hid den" name="pass" value="${ viewRow.pass }" />
                <table class="table table-bordered">
                <colgroup>
                    <col width="20%"/>
                    <col width="*"/>
                </colgroup>
                <tbody>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">작성자</th>
                        <td>
                            <input type="text" name="name" class="form-control" 
                                value="${ viewRow.name }" style="width:100px;" />
                        </td>
                    </tr>
                    <!-- 이미 패스워드 검증을 했으므로 필요없음
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">패스워드</th>
                        <td>
                            <input type="password" name="pass" class="form-control" 
                                style="width:200px;" />
                        </td>
                    </tr>
                     -->
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">제목</th>
                        <td>
                            <input type="text" name="title" class="form-control"
                            	value="${ viewRow.title }"  />
                        </td>
                    </tr>
                    <tr>
                        <th class="text-center" 
                            style="vertical-align:middle;">내용</th>
                        <td>
                            <textarea rows="5" name="contents" class="form-control">
                            	${ viewRow.contents }
                            </textarea>
                        </td>
                    </tr>
                </tbody>
                </table>

                <!-- 각종버튼 -->
                <div class="row mb-3">
                    <div class="col d-flex justify-content-end">
                        <button type="button" class="btn btn-warning" onclick="location.href='./list.do';">목록보기</button>
                        <button type="reset" class="btn btn-dark">다시쓰기</button>
                        <button type="submit" class="btn btn-danger">작성완료</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- Copyright영역 -->
    <%@ include file="/resources/commons/copyright.jsp" %>
</div>
</body>
</html>