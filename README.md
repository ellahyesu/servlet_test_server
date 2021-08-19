# Java Servlet Toy Projects

## <a href="https://github.com/ellahyesu/servlet_test_server/commit/59e086c967206a9503240b066bf89b62d74244f3">1. 멜롱 - 음악 정보 제공 사이트</a>

### Introduction
+ 동적 페이지로 구성 (jsp:include action tag)
  - 음원 목록 페이지
  - 노래 제목 클릭 시 해당 곡 세부 정보 페이지로 이동
  - 검색어 입력 시 해당 곡(노래 제목)이 있을 경우 세부 정보 페이지로 이동

### Platform
+ Java EE

> Preview
<p align="center">
  <img width="80%" src="https://user-images.githubusercontent.com/69390318/130090560-cbf58113-46cc-450e-89f1-d8fe117ddcaf.gif">
</p>

## <a href="https://github.com/ellahyesu/servlet_test_server/commit/fd35434945162d93d67ff7b105d8efa2faf761ca">2. 홍당무 마켓</a>
### Introduction
+ jsp와 DB연동
+ 상품 목록 페이지
  - id를 기준으로 내림차순 출력
  - 상품에 마우스를 올렸을 때, 해당 박스의 배경색 변경

+ 상품 입력 페이지
  - 새로운 jsp에서 input 태그로 데이터를 입력 받고, form 태그와 servlet을 이용해서 insert.
  - 셀러 선택 (seller 테이블을 조회 하여 seller 목록을 가져옴)
  - 판매자, 제목, 가격에 유효성 검사 (비어있는 값이 넘어가지 않도록)
  - insert 후 위에서 만든 목록 출력 페이지로 redirect.

### Platform
+ Java EE
+ MySQL Workbench

> Preview
<p align="center">
  <img width="80%" src="https://user-images.githubusercontent.com/69390318/130096429-39251074-f98d-42db-8715-364115efd1f6.gif">
</p>

