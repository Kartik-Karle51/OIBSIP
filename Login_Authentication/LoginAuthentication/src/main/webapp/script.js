const wrapper=document.querySelector(".wrapper");
const registerLink=document.querySelector(".register-link");
const loginlink=document.querySelector(".login-link");
registerLink.addEventListener("click",()=>{
    wrapper.classList.add('active');
});

loginlink.addEventListener("click",()=>{
    wrapper.classList.remove('active');
});

