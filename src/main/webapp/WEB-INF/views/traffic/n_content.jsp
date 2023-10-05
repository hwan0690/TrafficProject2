<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/user/notice/notice.css" />
</head>
<style>
* {
    margin: 0;
    padding: 0;
}

html {
    font-size: 10px;
}

ul, li {
    list-style: none;
}

a {
    text-decoration: none;
    color: inherit;
}

.board_wrap {
    width: 1200px;
    margin: 10px auto;
}

.board_title {
    margin-bottom: 30px;
}

.board_title strong {
    font-size: 40px;
}

.bt_wrap {
	margin-right: 350px;
    margin-top: 30px;
    text-align: center;
}

.bt_wrap a {
    display: inline-block;
    min-width: 80px;
    padding: 10px;
    border: 1px solid black;
    border-radius: 2px;
    font-size: 20px;
}
.bt_wrap a:first-child {
    margin-left: 0;
}

.bt_wrap a.on {
    background: black;
    color: #fff;
}

.board_list {
    width: 70%;
    border-top: 2px solid #000;
}

.board_list > div {
    border-bottom: 1px solid #ddd;
    font-size: 0;
}

.board_list > div.top {
    border-bottom: 1px solid #999;
}

.board_list > div:last-child {
    border-bottom: 1px solid #000;
}

.board_list > div > div {
    display: inline-block;
    text-align: center;
    font-size: 1.4rem;
}

.board_list > div.top > div {
    font-weight: 600;
}

.board_list .num {
    width: 10%;
}

.board_list .title {
    width: 60%;
    text-align: left;
}

.board_list .top .title {
    text-align: center;
}

.board_list .writer {
    width: 10%;
}

.board_list .date {
    width: 20%;
}

.board_list .count {
    width: 10%;
}

.board_page {
    margin-top: 30px;
    text-align: center;
    font-size: 0;
}

.board_page a {
    display: inline-block;
    width: 32px;
    height: 32px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    border-left: 0;
    vertical-align: middle;
    line-height: 100%;
}

.board_page a.bt {
    font-size: 1.2rem;
    padding-top: 10px;
    letter-spacing: -1px;
}

.board_page a.num {
    font-size: 1.4rem;
    padding-top: 9px;
}

.board_page a.num.on {
    border-color: #000;
    background: #000;
    color: #fff;
}

.board_page a:first-child {
    border-left:  1px solid #ddd;
}

.board_view {
    width: 70%;
    border-top: 2px solid #000;
    font-size: 1.4rem;
}

.board_view .title {
    padding: 20px 15px;
    border-bottom: 1px dashed #ddd;
    font-size: 2rem;
}
.board_view .info {
    padding: 15px;
    border-bottom: 1px solid #999;
    font-size: 0;
}

.board_view .info dl {
    display: inline-block;
    padding: 0 20px;
}

.board_view .info dl:first-child {
    padding-left: 0;
}

.board_view .info dl::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    display: block;
    width: 1px;
    height: 13px;
    background: #ddd;
}

.board_view .info dl:first-child::before {
    display: none;
}

.board_view .info dl dt,
.board_view .info dl dd {
    display: inline-block;
    font-size: 1.4rem;
}

.board_view .info dl dd {
    margin-left: 10px;
    color: #777;
}

.board_view .cont {
    padding: 15px;
    border-bottom: 1px solid #000;
    line-height: 160%;
    font-size: 1.4rem;
}

.board_write {
    border-top: 2px solid #000;
}

.board_write .title,
.board_write .info {
    padding: 15px;
}

.board_write .info {
    border-top: 1px dashed #ddd;
    border-bottom: 1px solid #000;
    font-size: 0;
}

.board_write .title dl {
    font-size: 0;
}

.board_write .info dl {
    display: inline-block;
    width: 50%;
    vertical-align: middle;
}

.board_write .title dt,
.board_write .title dd,
.board_write .info dt,
.board_write .info dd {
    display: inline-block;
    vertical-align: middle;
    font-size: 1.4rem;
}

.board_write .title dt,
.board_write .info dt {
    width: 100px;
}

.board_write .title dd {
    width: colc(100% - 100px);
}

.board_write .title input[type="text"],
.board_write .info input[type="text"],
.board_write .info input[type="password"] {
    padding: 10px;
    box-sizing: border-box;
}



.board_write .title input[type="text"] {
    width: 300%;
}


.board_write .cont{
    border-bottom: 1px solid #000;
}

.board_write .cont textarea {
    display: block;
    width: 100%;
    height: 300px;
    padding: 15px;
    box-sizing: border-box;
    border: 0;
    resize: vertical;
}
#page {
	display: inline-block;
    width: 32px;
    height: 32px;
    box-sizing: border-box;
    border: 1px solid #ddd;
    border-left: 0;
    vertical-align: middle;
    line-height: 100%;
    font-size: 1.2rem;
    padding-top: 10px;
    letter-spacing: -1px;
}
</style>
<body>
  <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
        </div>
    </div>
    <div class="board_view_wrap">
        <div class="board_view">
            <div class="title">
                ${n_content.n_title }
            </div>
            <div class="info">
                <dl>
                    <dt>번호</dt>
                    <dd>${n_content.n_no }</dd>
                </dl>
                <dl>
                    <dt>작성일</dt>
                    <dt>${n_content.n_date }</dt>
                </dl>
                <dl>
                    <dt>조회수</dt>
                    <dt>${n_content.n_hit }</dt>
                </dl>
            </div>
            <div class="cont">
               ${n_content.n_content }
            </div>
        </div>
        <div class="bt_wrap">
            <a href="notice" class="on">목록</a>
        </div>
    </div>
</body>
</html>