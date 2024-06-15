const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const PORT = process.env.PORT || 3000;

// Twilio credentials
// const accountSid = 'your_Id';
// const authToken = 'Your_token';
const client = require('twilio')(accountSid, authToken);

app.use(bodyParser.json());

// Route to handle receiving location and sending SMS
app.post('/send-location', (req, res) => {
  const locationURL = req.body.location;

  // Replace 'to' with the phone number you want to send the SMS to
  const to = '+918495******';

  client.messages
    .create({
      body: `Fire has been detected in this location: ${locationURL}. Please Take necessary action!.`,
      from: '+12402154742',
      to: to,
    })
    .then(message => console.log(`Message sent: ${message.sid}`))
    .catch(error => console.error(error));

  res.sendStatus(200);
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
