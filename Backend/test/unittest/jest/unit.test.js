const request = require("supertest");
const app = require('../../../app.js');

describe("Test the root path", () => {
  test("It should response the GET method", done => {
    request(app)
      .get("/")
      .then(response => {
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Login", () => {
  test("Verify login pass", done => {
    const user = {
      email: "earthekaphat@gmail.com",
      password: "555"
  };
    request(app)
      .post("/login")
      .send(user)
      .then(response => {
        expect(response.body.message).toBe("Log-in successful");
        done();
      });
  });
});

describe("Login", () => {
  test("Verify login fail", done => {
    const user = {
      email: "earthekaphat@gmail.com",
      password: "222"
  };
    request(app)
      .post("/login")
      .send(user)
      .then(response => {
        expect(response.body.message).toBe("Log-in fail");
        done();
      });
  });
});

// describe("register", () => {
//   test("Test Register", done => {
//     const user = {
//       firstname: "hello",
//       lastname: "haha",
//       email: "hello@gmail.com",
//       password: "555",
//       dob:"2021-11-10",
//       citizenid: "1112223333444",
//       gender: "male",
//       bloodType: "posB",
//       address: "Oh-ho",
//       phoneNumber: "0998887766",
//       emerContact: "0112223333"
//   };
//     request(app)
//       .post("/register")
//       .send(user)
//       .then(response => {
        
//         expect(response.statusCode).toBe(200);
//         done();
//       });
//   });
// });

// describe("register organ", () => {
//   test("Test Register Organ", done => {
//     const donationform = {
//       username: "hello@gmail.com",
//       allergy: "allergy",
//       medication: "medication",
//       condition: "condition",
//       organ: "Cornea",
//       purpose: "Medical Transplant"
//   };
//     request(app)
//       .post("/regisorgan")
//       .send(donationform)
//       .then(response => {
        
//         expect(response.statusCode).toBe(200);
//         done();
//       });
//   });
// });

// describe("Blood Register Form", () => {
//   test("Test Blood Register Form", done => {
//     const donationform = {
//       DonationDate: "2021-11-10",
//       place: "Siriraj Hospital",
//       purpose: "Plasma",
//   };
//     request(app)
//       .post("/BloodRegisterForm")
//       .send(donationform)
//       .then(response => {
        
//         expect(response.statusCode).toBe(200);
//         done();
//       });
//   });
// });

describe("Homepage", () => {
  test("Test updated case no.", done => {
    request(app)
      .get("/homepage")
      .then(response => {
        expect(response.statusCode).toBe(200);
        expect(response.body.length).toBe(8); // +1 if open test Register Organ
        done();
      });
  });
});

describe("visualCard", () => {
  test("Test Visual Card", done => {
    const user = {
      email: "earthekaphat@gmail.com"
  };
    request(app)
      .post("/visualCard")
      .send(user)
      .then(response => {
        
        expect(response.statusCode).toBe(200);
        expect(response.body[0].firstname).toBe('Ekaphat');
        expect(response.body[0].lastname).toBe("Seamthong");
        expect(response.body[0].phoneNumber).toBe("0999362292");
        expect(response.body[0].gender).toBe("male");
        expect(response.body[0].dob).toBe("03-07-2000");
        done();
      });
  });
});

describe("Donated Organ visualCard ", () => {
  test("Test Donated Organ in Visual Card", done => {
    const user = {
      email: "earthekaphat@gmail.com"
  };
    request(app)
      .post("/visualCard2")
      .send(user)
      .then(response => {
        
        expect(response.statusCode).toBe(200);
        expect(response.body.length).toBe(2);
        done();
      });
  });
});

describe("Donated heart", () => {
  test("Test Donated heart", done => {
    request(app)
      .get("/heartdetails")
      .then(response => {
        expect(response.body.length).toBe(3);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated bone", () => {
  test("Test Donated bone", done => {
    request(app)
      .get("/bonedetails")
      .then(response => {
        expect(response.body.length).toBe(2);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated bone marrow", () => {
  test("Test Donated bone marrow", done => {
    request(app)
      .get("/bonemarrowdetails")
      .then(response => {
        expect(response.body.length).toBe(2);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated cornea", () => {
  test("Test Donated cornea", done => {
    request(app)
      .get("/corneadetails")
      .then(response => {
        expect(response.body.length).toBe(1); // +1 if open test Register Organ
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated kidney", () => {
  test("Test Donated kidney", done => {
    request(app)
      .get("/kidneydetails")
      .then(response => {
        expect(response.body.length).toBe(4);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated liver", () => {
  test("Test Donated liver", done => {
    request(app)
      .get("/liverdetails")
      .then(response => {
        expect(response.body.length).toBe(2);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated lung", () => {
  test("Test Donated lung", done => {
    request(app)
      .get("/lungdetails")
      .then(response => {
        expect(response.body.length).toBe(1);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Donated pancreas", () => {
  test("Test Donated pancreas", done => {
    request(app)
      .get("/pancreasdetails")
      .then(response => {
        expect(response.body.length).toBe(3);
        expect(response.statusCode).toBe(200);
        done();
      });
  });
});

describe("Update information", () => {
  test("Test update information", done => {
    const user = {
      firstname: "firstname",
      lastname: "lastname",
      email: "eiei@gmail.com",
      password: "555",
      dob: "dob",
      bloodType:"bloodType",
      citizenid:"iden",
      gender:"gender",
      address: "address",
      phoneNumber: "phoneNumber",
      emerContact: "emerContact",
      newPass : "555",
  }
    request(app)
      .post("/updateinfo")
      .send(user)
      .then(response => {
        
        expect(response.statusCode).toBe(200);
        expect(response.body.value.firstname).toBe('firstname');
        expect(response.body.value.lastname).toBe('lastname');
        expect(response.body.value.email).toBe('eiei@gmail.com');
        expect(response.body.value.password).toBe('555');
        expect(response.body.value.address).toBe('address');
        expect(response.body.value.bloodType).toBe('bloodType');
        expect(response.body.value.citizenid).toBe('iden');
        expect(response.body.value.dob).toBe('dob');
        expect(response.body.value.emerContact).toBe('emerContact');
        expect(response.body.value.gender).toBe('gender');
        expect(response.body.value.phoneNumber).toBe('phoneNumber');
        done();
      });
  });
});




