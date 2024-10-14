/**
 * cookie.js
 */
 
 	function delCookie(cname, path){
		
  		let now = new Date();
  		// 만기시점을 과거로 돌린다. : - 10
  		now.setDate( now.getDate() - 10 );
  		let expires = now.toUTCString();
  		
  		// 쿠키 저장 코딩 path=/ : 모든 로컬에서
  		document.cookie = 
  			`${ cname }=; expires=${expires}; path=${path}`;
		
  	};
  
  	function getCookie(cname){
  		let cookies = document.cookie;
  		
  		let cvalue;
  		
  		// ; / = 스플릿
  		let pattern = /;\s/
  		let cookieArr = cookies.split(pattern);
  		cookieArr.forEach(function(elemt,index,array){
  			let cnvArr = elemt.split("=");
  			if (cnvArr[0]==cname) {
				cvalue = unescape( cnvArr[1] );
				// break; forEach 는 break 사용할 수 없다. : error
				// for of break 가능하다.
			}
  		});
  		
  		if (cvalue) {
			return cvalue;
		}else{
			return null;
		}
  	};
  	
  	function getAllCookies(){
  		let cookies = document.cookie;
  		return cookies;
  	};
  
  	function setCookie(cname, cvalue, exdays){
  		let now = new Date();
  		now.setDate( now.getDate() + exdays );
  		let expires = now.toUTCString();
  		
  		// 쿠키 저장 코딩 path=/ : 모든 로컬에서
  		document.cookie = 
  			`${ cname }=${ escape( cvalue ) }; expires=${expires}; path=/`;
  	};
  	
  	function setCookie(cname, cvalue, exdays, path){
  		let now = new Date();
  		now.setDate( now.getDate() + exdays );
  		let expires = now.toUTCString();
  		
  		// 쿠키 저장 코딩 path=/ : 모든 로컬에서
  		document.cookie = 
  			`${ cname }=${ escape( cvalue ) }; expires=${expires}; path=${path}`;
  	};