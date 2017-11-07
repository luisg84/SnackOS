
// firebase

var config = {
  apiKey: "AIzaSyARisAKMotG2QtYDyzrvpcDDawnr5AeSww",
  authDomain: "snackos-cea34.firebaseapp.com",
  databaseURL: "https://snackos-cea34.firebaseio.com",
  projectId: "snackos-cea34",
  storageBucket: "",
  messagingSenderId: "714299521526"
};
firebase.initializeApp(config);
// conexion firebase


var mod = document.getElementById('mod');
var dbref = firebase.database().ref().child('text');
dbref.on('value', snap => mod.innerText = snap.val());
