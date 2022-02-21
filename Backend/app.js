const express = require('express')
const cors = require('cors')
const app = express()
const MongoClient = require('mongodb').MongoClient

app.use(cors())
app.use(express.json())
app.use(express.urlencoded({ extended: true }))

const connectionString = 'mongodb://localhost:27017/OrganDonation'

let db;

MongoClient.connect(connectionString, {
    useUnifiedTopology: true
  }, (err, client) => {
      db= client.db("OrganDonation")  
    console.log('Connected to Database')
  })

app.post('/login',(req,res)=>{
  
    const {email,password} = req.body
    db.collection('User').find({email: email,password: password}).toArray()
    .then(results => {
        if (results.length>0){ 
            
            return res.send({message: "Log-in successful",username: results[0].email,id: results[0]._id})  
        }
        return res.send({message: "Log-in fail"})    
    })
    
    
})

app.post('/register',(req,res)=>{
    db.collection('User').insertOne(req.body)
    .then(results => {
        return res.send(results.insertedId)
    })
})

app.post('/regisorgan',(req,res)=>{
    db.collection('Donation Form').insertOne(req.body)
    .then(results => {
        return res.send(results)
    })
})

app.post('/BloodRegisterForm',(req,res)=>{
    db.collection('Blood Donation Form').insertOne(req.body)
    .then(results => {
        return res.send(results)
    })
})

app.get('/homepage',(req,res)=>{
    
    db.collection('Donation Form').find().toArray()
    .then(results => {
        return res.send(results)
    })

    
})

app.post('/visualCard',(req,res)=>{
    const {email} = req.body
    db.collection('User').find(({email: email})).toArray()
    .then(results => {
        return res.send(results)
    })
})
app.post('/visualCard2',(req,res)=>{
    const {email} = req.body
    db.collection('Donation Form').find(({username: email})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/heartdetails',(req,res)=>{
    const organ = "Heart"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})
app.get('/bonedetails',(req,res)=>{
    const organ = "Bone"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})
app.get('/bonemarrowdetails',(req,res)=>{
    const organ = "Bone Marrow"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/corneadetails',(req,res)=>{
    const organ = "Cornea"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/kidneydetails',(req,res)=>{
    const organ = "Kidney"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/liverdetails',(req,res)=>{
    const organ = "Liver"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/lungdetails',(req,res)=>{
    const organ = "Lung"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})

app.get('/pancreasdetails',(req,res)=>{
    const organ = "Pancreas"
    db.collection('Donation Form').find(({organ: organ})).toArray()
    .then(results => {
        return res.send(results)
    })
})


app.post('/updateinfo',(req,res)=>{
    const {email,password} = req.body
    
    db.collection('User').findOneAndUpdate(
        {email: email, password: password },
        {
            $set: {
                
                firstname: req.body.firstname,
                lastname: req.body.lastname,
                email: req.body.email,
                password: req.body.newPass,
                dob: req.body.dob,
                bloodType : req.body.bloodType,
                citizenid: req.body.citizenid,
                gender: req.body.gender,
                address: req.body.address,
                phoneNumber: req.body.phoneNumber,
                emerContact: req.body.emerContact,
              }
        }
    )
    .then(results => {
        return res.send(results)
    })
})

app.get("/", (req, res) => {
    res.status(200).send("Hello World!");
  });
  
  module.exports = app;

