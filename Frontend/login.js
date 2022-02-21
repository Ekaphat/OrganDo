

function sum(a, b) {
    return a + b;
}
module.exports = sum;

//document.getElementById("login").onclick = login;



async function login(){
    const email = document.getElementById("email").value
    const password = document.getElementById("password").value
    const user ={
        email: email,
        password: password,
    }
    const data = await axios.post('http://localhost:3000/login',user)
    
   if (data.data.message== "Log-in fail"){
       alert("Log-in fail");
       localStorage.clear()
   }
   else if (data.data.message == "Log-in successful"){
       //alert("Log-in successful");
       localStorage.setItem("username", data.data.username)
       console.log(data)
       localStorage.setItem("id", data.data.id)
        window.location.href = "homepage.html";
   }
}

