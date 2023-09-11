$(document).ready(function() {
   
    var val= getEduLevelText(1);
    document.getElementById("jsVal").innerHTML = val;
   
    });


function getEduLevelText(value) {
    switch(value) {
        case '1': return '대학원(박사)';
        case '2': return '대학원(석사)';
        case '3': return '대학교(4년)';
        case '4': return '대학(2,3년)';
        case '5': return '고등학교';
        default: return '';
    }
}