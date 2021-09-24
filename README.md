<a href="https://www.ruby-lang.org/pt/">
  <img alt="Ruby" src="https://img.shields.io/badge/Ruby-2.6.7-brightgreen" target="_blank">
</a>
<a href="https://rubyonrails.org/">
  <img alt="Ruby on Rails" src="https://img.shields.io/badge/Rails-5.2.6-brightgreen" target="_blank">
</a>
<a href="https://codeclimate.com/github/MoacirPetry/ws-booking-api/maintainability"><img src="https://api.codeclimate.com/v1/badges/384a16cdf393577c51b0/maintainability" /></a>
<a href="https://codeclimate.com/github/MoacirPetry/ws-booking-api/test_coverage"><img src="https://api.codeclimate.com/v1/badges/384a16cdf393577c51b0/test_coverage" /></a>

# WS Booking API

This is an API app where Users can be Booked by Agents.

# Set up the environment

>🚨 ***Note: Before started, make  sure to have the Ruby Version 2.6.7 and Rails 5.2.6 in your computer!***

1 - Git Clone

2 - Bundle Install

3 - `rails db:create db:migrate`

>Note: Change in **config/database.yml** the **username** and **password** regarding your Database.

4 - Run `rake setup:create n=9`, it will create fake values and populate in DB.

5 - Run `rails s`

6 - Access the http://0.0.0.0:3000/users to see the app working.

# Testing

Run `rspec spec` to check the testings.

# Things to improve 💡

It's needed to improve something, the focus now it is not make that.

Some important things to do later.

Check it out with the command: `rake notes`


