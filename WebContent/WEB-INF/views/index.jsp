<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gerenciador de livros</title>
<style  type="text/css">
	*:focus {outline: none;}

body {font: 14px/21px "Lucida Sans", "Lucida Grande", "Lucida Sans Unicode", sans-serif;}

.book_form h2, .book_form label {font-family:Georgia, Times, "Times New Roman", serif;}

.book_form ul {
    width:750px;
    list-style-type:none;
    list-style-position:outside;
    margin:0px;
    padding:0px;
}
.book_form li{
    padding:12px; 
    border-bottom:1px solid #eee;
    position:relative;
}

.book_form li:first-child, .contact_form li:last-child {
    border-bottom:1px solid #777;
}

.book_form h2 {
    margin:0;
    display: inline;
}
.required_notification {
    color:#d45252; 
    margin:5px 0 0 0; 
    display:inline;
    float:right;
}

.book_form label {
    width:150px;
    margin-top: 3px;
    display:inline-block;
    float:left;
    padding:3px;
}
.book_form input {
    height:20px; 
    width:220px; 
    padding:5px 8px;
}
.book_form textarea {padding:8px; width:300px;}
.book_form button {margin-left:156px;}

.book_form input, .contact_form textarea { 
    border:1px solid #aaa;
    box-shadow: 0px 0px 3px #ccc, 0 10px 15px #eee inset;
    border-radius:2px;
}
.book_form input:focus, .contact_form textarea:focus {
    background: #fff; 
    border:1px solid #555; 
    box-shadow: 0 0 3px #aaa; 
}
/* Button Style */
button.submit {
    background-color: #68b12f;
    background: -webkit-gradient(linear, left top, left bottom, from(#68b12f), to(#50911e));
    background: -webkit-linear-gradient(top, #68b12f, #50911e);
    background: -moz-linear-gradient(top, #68b12f, #50911e);
    background: -ms-linear-gradient(top, #68b12f, #50911e);
    background: -o-linear-gradient(top, #68b12f, #50911e);
    background: linear-gradient(top, #68b12f, #50911e);
    border: 1px solid #509111;
    border-bottom: 1px solid #5b992b;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    -ms-border-radius: 3px;
    -o-border-radius: 3px;
    box-shadow: inset 0 1px 0 0 #9fd574;
    -webkit-box-shadow: 0 1px 0 0 #9fd574 inset ;
    -moz-box-shadow: 0 1px 0 0 #9fd574 inset;
    -ms-box-shadow: 0 1px 0 0 #9fd574 inset;
    -o-box-shadow: 0 1px 0 0 #9fd574 inset;
    color: white;
    font-weight: bold;
    padding: 6px 20px;
    text-align: center;
    text-shadow: 0 -1px 0 #396715;
}
button.submit:hover {
    opacity:.85;
    cursor: pointer; 
}
button.submit:active {
    border: 1px solid #20911e;
    box-shadow: 0 0 10px 5px #356b0b inset; 
    -webkit-box-shadow:0 0 10px 5px #356b0b inset ;
    -moz-box-shadow: 0 0 10px 5px #356b0b inset;
    -ms-box-shadow: 0 0 10px 5px #356b0b inset;
    -o-box-shadow: 0 0 10px 5px #356b0b inset;
     
}
.book_form input:focus, .book_form textarea:focus { /* add this to the already existing style */
    padding-right:70px;
}

.book_form input, .book_form textarea { /* add this to the already existing style */
    -moz-transition: padding .25s; 
    -webkit-transition: padding .25s; 
    -o-transition: padding .25s;
    transition: padding .25s;
}

.book_form input, .book_form textarea {
    padding-right:30px;
}

input:required {
    background: #fff url(images/red_asterisk.png) no-repeat 98% center;
}

::-webkit-validation-bubble-message {
    padding: 1em;
}

.book_form input:focus:invalid, .book_form textarea:focus:invalid { /* when a field is considered invalid by the browser */
    background: #fff url(images/invalid.png) no-repeat 98% center;
    box-shadow: 0 0 5px #d45252;
    border-color: #b03535
}
.book_form input:required:valid, .book_form textarea:required:valid { /* when a field is considered valid by the browser */
    background: #fff url(images/valid.png) no-repeat 98% center;
    box-shadow: 0 0 5px #5cd053;
    border-color: #28921f;
}
</style> 
	
</head>
<body>

<form class="book_form" action="/SpringMvc/livros" method="post" name="book_form">
<ul>
    <li>
         <h2>Cadastrar livro</h2>
         <span class="required_notification">* Campo obrigatório!</span>
    </li>
    <li>
        <label for="name">Nome:</label>
        <input type="text" name="bookName" placeholder="Nome" required/>*
    </li>
    <li>
        <label for="name">Descrição:</label>
        <textarea name="bookDescription" cols="40" rows="6" required placeholder="Descrição"></textarea>*
    </li>
    <li>
        <label for="name">Autor:</label>
        <input type="text" name="bookAuthor" required placeholder="Autor"/>*
    </li>
    <li>
        <label for="name">Páginas:</label>
        <input type="number" name="bookPages" placeholder="Páginas" required/>*
    </li>
    <li>
    <button class="submit" type="submit">Cadastrar</button>
</li>
</ul>

</form>

</body>
</html>