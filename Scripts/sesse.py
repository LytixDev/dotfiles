from selenium import webdriver
from selenium.webdriver.firefox.options import Options

options = Options()
options.headless = True
driver = webdriver.Firefox(options=options, service_log_path='/dev/null')
driver.get("https://analysis.sesse.net/")
print(driver.page_source)
driver.quit()
