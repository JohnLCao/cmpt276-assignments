var grades = [65.95, 56.98, 78.62, 96.1, 90.3, 72.24, 92.34, 60.00, 81.43, 86.22, 88.33, 9.03,
49.93, 52.34, 53.11, 50.10, 88.88, 55.32, 55.69, 61.68, 70.44, 70.54, 90.0, 71.11, 80.01];

const bounds = ["max", "ap", "a", "am", "bp", "b", "bm", "cp", "c", "cm", "d", "f"];
const letter_grades = ["ap", "a", "am", "bp", "b", "bm", "cp", "c", "cm", "d", "f"];

var boundMap = {};
var gradesMap = {};

function calculate(){
	getBoundValues();
	grades.forEach(function(g){
		placeGrade(g);
	});
	updateHistogram();
}

function getBoundValues(){
	bounds.forEach(function(b){
		boundMap[b] = Number(document.getElementsByName(b)[0].attributes.value.nodeValue);
	});
}

function placeGrade(grade){
	for (var bound in boundMap){
		if (grade >= boundMap[bound]){
			// init to 1 if nothing recorded yet
			gradesMap[bound] = (gradesMap[bound]) ? (gradesMap[bound] + 1) : 1;
			break;
		}
	}
}

function updateHistogram(){
	console.log(gradesMap);
}

document.addEventListener("DOMContentLoaded", calculate);