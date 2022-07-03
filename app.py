from flask import Flask
app = Flask(__name__)

@app.route("/",methods=['GET','POST'])

def index ():
    return "Hi, I am first AI deployed by Abhishek ! He wants you to know he loves you..."

if __name__ == "__main__":
    app.run(debug=True)