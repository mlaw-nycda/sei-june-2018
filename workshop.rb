# run this file with: ruby workshop.rb

require 'curb'
require 'securerandom'

file_count = 0
urls = "https://raw.githubusercontent.com/mlaw-nycda/empireCommerce/master/cars.json"
cars = {}
# create a new file
dr = "~/Desktop/"
File.open('index.html', 'w') { |html|
 html.write("
   <!DOCTYPE html>
<html>
<head>
<title>Order Id - {car.vin}</title>
</head>
</body>

<h1>Order Number: [car will vin goes here]</h1>


</body>
</html>
   ")
}

File.open('main.js', 'w') { |js|
 js.write("
   console.log('javasript is working')")
}


cmd1 = "curl #{urls}"

while file_count < 3
 cmd2 = "cd #{dr}"
 system(cmd2)
 # use curb to pull files from github securely
 curb = SecureRandom.uuid
 id = SecureRandom.uuid
 # write json to files
 d = Dir.mkdir("#{curb}")
 File.open("./order-#{id}", 'w') { |f|
   # be sure to open the files to verify data is being saved
   f.write(curb)
 }
 file_count + 1
end
