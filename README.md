XML Amsterdam Demo
========

Small example of XSLTForms integration with Processing and MQTT
@tingenek for llamas everywhere.

Processing:

1. Tree with baubles and some semi-realistic snow
2. You can change the colour of the bauble manually or via mqtt and CheerLights
3. Runs via the fantastic [Processing.js](http://processingjs.org/).

MQTT:

1. Talks to the free iot.eclipse.org broker on websockets using the [PAHO javascript library](https://eclipse.org/paho/clients/js) 
2. Subscribes to /cheerlights topic
3. When tweets are sent to #cheerlights (see cheerlights.org) some code run by the epic @andysc publishes the colours to the topic 
4. The publish event sends the new colour to the Processing sketch via XSLTForms <events/>.
5. If you can't wait for Twitter, you can publish your own colour to the broker directly on the form.

XSLTForms:

1. Hangs everything together. See http://www.agencexml.com/xsltforms
2. Two-way communication with MQTT
3. Small selection control allows you to change colours if you're not connected.  


