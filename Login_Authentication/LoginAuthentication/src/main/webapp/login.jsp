<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css"
	integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<script type="module"
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
<link rel="stylesheet" href="style.css">

</head>
<body>


	<div class="wrapper">
		<span class="icon-close"> &times; </span>
		<div class="form-box login">
			<h2>Login</h2>
			<form action="LoginServlet" method="post">
				<div class="input-box">
					<span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
					<input type="text" name="mail" required autocomplete="off">
					<label>Email</label>
				</div>
				<div class="input-box">
					<span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
					<input type="password" name="pass" required> <label>Password</label>
				</div>
				<div class="remember-forgot">
					<label for=""><input type="checkbox">Remind Me </label> <a
						href="#">Forgot Password?</a>
				</div>

				<button type="submit" class="btn">Login</button>
				<div class="login-register">
					<p>
						Don't have an account ?<a href="#" class="register-link">Register</a>
					</p>
				</div>
			</form>
		</div>

		<div class="form-box register">
			<h2>Register</h2>
			<form action="RegisterServlet" method="post">

				<div class="input-box">
					<span class="icon"><ion-icon name="person"></ion-icon></span> <input
						type="text" name="username" required autocomplete="off"> <label>Username</label>
				</div>
				<div class="input-box">
					<span class="icon"><ion-icon name="mail-outline"></ion-icon></span>
					<input type="text" name="Rmail" required autocomplete="off">
					<label>Email</label>
				</div>
				<div class="input-box">
					<span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
					<input type="password" name="Rpass" required> <label>Password</label>
				</div>
				<div class="remember-forgot">
					<label for=""><input type="checkbox">I agree to the
						terms and conditions 
				</div>

				<button type="submit" class="btn" onclick="check()">Register</button>
				<div class="login-register">
					<p>
						Already have an account ?<a href="#" class="login-link">Login</a>
					</p>
				</div>
			</form>
		</div>
	</div>



	<script src="script.js"></script>
</body>
</html>