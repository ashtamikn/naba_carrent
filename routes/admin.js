const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  if (!req.user) return res.redirect("/");
  if (!req.user.admin) return res.redirect("/library/");

  db.query(`SELECT * FROM docdetails;`, (err, result) => {
    db.query(
      `SELECT * FROM Appointment
    JOIN docdetails ON Appointment.Did =docdetails.Did;`,
      (err1, result1) => {
        db.query(
          `SELECT * FROM users;`,
          (err2, result2) => {
            res.render("admin", {
              car: null,
              carsArr: result,
              res: req.query.res,
              resv: null,
              resArr: result1,
              userArr: result2,
              userData: null,
              user: req.user,
            });
          }
        );
      }
    );
  });
});

router.get("/car/:car_id", (req, res) => {
  if (!req.user) return res.redirect("/");
  if (!req.user.admin) return res.redirect("/library/");

  db.query(
    `SELECT * FROM docdetails WHERE Did LIKE ?;`,
    req.params.car_id,
    (err, result) => {
      db.query(`SELECT desig FROM doctors;`, (err1, result1) => {
        db.query(`SELECT DISTINCT type FROM docdetails;`, (err2, result2) => {
          return res.render("admin", {
            car: result[0],
            slctArr: result1,
            slct1Arr: result2,
            carsArr: null,
            res: null,
            resv: null,
            resArr: null,
            userArr: null,
            userData: null,
            user: req.user,
          });
        });
      });
    }
  );
});

router.get("/resv/:res_id", (req, res) => {
  if (!req.user) return res.redirect("/");
  if (!req.user.admin) return res.redirect("/library/");

  db.query(
    `SELECT *
    FROM ((Appointment JOIN docdetails ON Appointment.Did=docdetails.Did)
    JOIN users ON Appointment.idUser=users.idUser)
    WHERE idReservation LIKE ?;`,
    req.params.res_id,
    (err, result) => {
      res.render("admin", {
        car: null,
        carsArr: null,
        resv: result[0],
        res: null,
        resArr: null,
        userArr: null,
        userData: null,
        user: req.user,
      });
    }
  );
});

router.get("/user/:user_id", (req, res) => {
  if (!req.user) return res.redirect("/");
  if (!req.user.admin) return res.redirect("/library/");

  db.query(
    `SELECT * FROM users
    WHERE idUser LIKE ?;`,
    req.params.user_id,
    (err, result) => {
      return res.render("admin", {
        car: null,
        carsArr: null,
        res: null,
        resv: null,
        resArr: null,
        userArr: null,
        userData: result[0],
        user: req.user,
      });
    }
  );
});



function __print(str, err) {
  return "It wasn't possible to " + str + " the data! Due to " + err;
}

module.exports = router; 
