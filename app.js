var createError = require('http-errors');
const express = require("express");
const cors = require("cors");
const app = express();
const path = require('path')
var multer = require('multer');
var bodyParser = require('body-parser')
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var storage = multer.diskStorage({
  destination: (req, file, callBack) => {
    callBack(null, './public/images/')     // './public/images/' directory name where save the file
  },
  filename: (req, file, callBack) => {
    console.log(file)
    callBack(null, file.originalname)
  }
})
var upload = multer({
  storage: storage
})
app.use(upload.single('photo'));

const db = require("./app/models/model");
require("./app/routes/hospital.routes")(app);
require("./app/routes/patients.routes")(app);
require("./app/routes/psychiatrists.routes")(app);

var corsOptions = {
  origin: "http://localhost:8081"
};
db.sequelize.sync();


app.use(cors(corsOptions));
app.use(bodyParser.urlencoded({ extended: false }))
app.set('view engine', 'jade');

app.get("/", (req, res) => {
  res.send(200, { message: "Welcome to hospital managment application." });
});


// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
