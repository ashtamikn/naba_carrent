const router = require("express").Router(),
  db = require("../db/db");

router.get("/", (req, res) => {
  res.redirect("/catalog/Genphy");
});

router.get("/:catalog", (req, res) => {
  if (!req.user) return res.redirect("/");
  // console.log(req.params.catalog)
  console.log(req)
  db.query(
    `SELECT * FROM doctors
    WHERE desig LIKE CONCAT('%', ?, '%');`,
    req.params.catalog,
    (err, result) => {
      // console.log(result,req.params)
      db.query(
        
        `SELECT * FROM docdetails
      WHERE doctors LIKE ?;`,
        result[0].desig,
        (err1, result1) => {
          db.query(
            `SELECT desig FROM doctors
        WHERE desig NOT LIKE ?;`,
            result[0].desig,
            (err2, result2) => {
              return res.render("catalog", {
                brand: result[0],
                carsArr: result1,
                type: result2,
                user: req.user,
              });
            }
          );
        }
      );
    }
  );
});

module.exports = router;
