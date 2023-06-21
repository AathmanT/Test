import ballerina/http;
import ballerina/log; 

type Greeting record {
    string 'from;
    string to;
    string message;
};

service /greetings on new http:Listener(8090) {
    resource function get .(string name) returns Greeting {
        Greeting greetingMessage = {"from" : "Choreo", "to" : name, "message" : "Welcome to Choreo!"};
        log:printError("Test error log");

        return greetingMessage;
    }
}
