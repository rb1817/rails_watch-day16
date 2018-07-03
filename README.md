# 기본 설정

`rails g scaffold movies`

```ruby
# beautify
gem 'bootstrap', '~> 4.1.1'
# authentication
gem 'devise'
# file upload
gem 'carrierwave'
```

`# gem 'turbolinks', '~> 5'` 주석으로 바꾼다

application.js

application.html

에서 `turbolink` 제거

```ruby
<% flash.each do |k,v| %>
  <div class = "alert alert-<%=k%>"><%=v%></div>
<% end %>
```



```ruby
group :development do
  gem 'rails_db'
end
```



# 이벤트 등록 방법

html 표면

css 꾸미기

java script 동적을 바꾸기

```html
document.getElementsByClassName
document.getElementById
document.getElementsByTagName
```



alert()

confirm()

prompt()

​      이벤드리스너          이벤트 핸들러

요소.on ________    	= 	function() {

​					alet()

​					}

## 기본적인 js 설명(front)

---

1. 마우스를 오버하면 "나 건드리지 마 !!" 라는 alert()를 띄움
2. 마우스 오버를 3회 이상 하면 "아 진짜 건드리지 말라고" 라는 alert()를 띄움

* count

  ```html
  
  <script>
    var btn = document.getElementsByClassName("btn")[0];
    var count =0;
    var msg = "건드리지마세요"
  //1번째
    btn.onmouseover = function() {
      count++ ;
      if (count > 3) {
        msg = "아프다";
      }
      alert(msg);
    }
  
  
  //2번쨰
  btn.addEventListener("mouseover", function() {
  										alert("하위~");
  										  })
      
  </script>
  ```





## 함수 사용

---

```html
<script>
var func1 = function() {
  alert("하이");
} //표현식
function func2() {
  alert("하이2");
} //선언식
func1();
func2();
</script>
```

func1()을 선언되기전에는 사용하지 못하고, func2는 이전에도 사용 가능하다.

1번째 방법 - 함수표현식

2번째 방법 - 함수선언식

3번쨰 방법 - 익명함수



```html
()-바로실행
var btn = document.getElementsByClassName("btn")[0];
btn.addEventListener("mouseover"),func2());

var btn2 = document.getElementsByClassName("btn")[1];
btn2.onmouseover = func1()

없으면-등록만
var btn = document.getElementsByClassName("btn")[0];
btn.addEventListener("mouseover"),func2;

var btn2 = document.getElementsByClassName("btn")[1];
btn2.onmouseover = func1;`
```



func()는 바로 실행 func라고해야 등록만 된다.



## 글씨 변하게 하기

```html
var btn = document.getElementsByClassName("btn")[0];
var count = 0;
var title = document.getElementsByClassName("card-title")[0];
var t =title.innerText
btn.addEventListener("mouseover", function(){
   
    var title = document.getElementsByClassName("card-title")[0];
     console.dir(title)
    title.innerText = "don't tounch me..";
});
btn.addEventListener("mouseout", function(){
    var title = document.getElementsByClassName("card-title")[0];
    title.innerText = t;
});
```





