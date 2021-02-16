var burgerMenu = document.getElementById('burger-menu');
var show = document.getElementById('menu');
burgerMenu.addEventListener('click', function(){
    this.classList.toggle("close");
    show.classList.toggle('show');
});

//
const readMorebtn = document.querySelector('.read-more-btn');
const text = document.querySelector('.text');

readMorebtn.addEventListener('click', (e)=>{
    text.classList.toggle('show-more');
    if(readMorebtn.innerText == 'Show More'){
        readMorebtn.innerText = 'Show Less';
    }else{
        readMorebtn.innerText = 'Show More';
    }
})
