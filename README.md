# Employee Tracker

##### The app that keeps track of divisions within a company and the employees within each division, August 31st 2015

#### By Jennifer Lee Bell & Christoph Pirringer

## Description

This app will allow you to add divisions and employees within each division.

## Setup

* Open terminal
* _`$ git clone https://github.com/jenleebell/employee_tracker.git`_
* _`$ cd employee_tracker` to enter directory_
* _`$ bundle` to install gems_
* _`$ postgres` to start a postgres server_
* _`$ rake db:create` to create the database_
* _`$ rake db:migrate` to add table information_
* _open new tab in terminal and run `$ ruby app.rb` in the project directory to run sinatra app_
* _go to `localhost:4567` in your favorite browser to open Employee Tracker_


## Technologies Used

Written in Ruby
Runs on Sinatra
Error checking with RSpec and Capybara
Database management with postgresql
Object Modeling with ActiveRecord

### Legal

Copyright (c) 2015 Jennifer Bell

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
