require "selenium-webdriver"


driver = Selenium::WebDriver.for :safari######firefoxなりchromeなりに変えると良い?

print "input login page's url:"
url = gets.chop
driver.navigate.to url


id = driver.find_element(:name => "username")
#idに入力するものを記入
print "input ID:"
name = gets.chop
id.send_keys(name)######入力必須

pass = driver.find_element(:name => "password")
#passwordに入力するものを記入
print "input Pass:"
password = gets.chop
pass.send_keys(password)#####入力必須

button = driver.find_element(:class_name => "btn-primary")
button.click

#popupはパスワードを保存しないで退避
sleep 10

page = url.split("/")[2]

#違ってたら1時間勉強する用のページのurlを記入
driver.navigate.to "https://#{page}/course/time/5649"####
70.times do |i|
driver.find_elements(:class_name => "btn-success")[0].click
	puts "-----#{i}-----"
	61.times do |j|
		sleep 60
		print "#{j},"
	end
end

driver.quit
