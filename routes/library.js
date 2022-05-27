const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  if (!req.user) return res.redirect("/");

  db.query(
    `SELECT * FROM Appointment
    JOIN docdetails ON Appointment.Did=docdetails.Did
    WHERE Appointment.Did LIKE ?
    ;`,
    req.user.idUser,
    (err, result) => {
      if (!result.length)
        return res.render("library", {
          res: req.query.res,
          carsArr: null,
          user: req.user,
          // isReserv: false
        });
      else
        return res.render("library", {
          res: req.query.res,
          carsArr: result,
          user: req.user,
        });
    }
  );
});

module.exports = router;
