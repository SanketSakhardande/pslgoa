
<jsp:include page="/menu.jsp"></jsp:include>
<form action="login.do" method="post">

	<h1>Login</h1>
	<p>
		Login <input type="text" name="login" />
	</p>
	<p>
		Password <input type="password" name="password" />
	</p>
	<p>
		<input type="submit" name="submit" value="next" />
	</p>

	<p style="color:red">
	${error}
	</p>
	
</form>
