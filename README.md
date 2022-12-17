# Page Views Counter
Simple PHP based pageview counter

### Introduction

This is pure PHP written script, for counting any page access counts, by adding special file as an image source.

No frameworks, composer-free, tiny and lightweight counter. No need any setup (excepting of DB connection).

This is simple implementation, just for showing principles to count page views for analytics purposes.

<hr>

### Project setup

I skipped DB upgrade, tables creation and schema definition steps. 
Just create database, create table called "page_views"( can be changed from DB class) 
and configure db connection from boot.php file.

### Structure

The main bootstrap file is [boot.php](boot.php). 
This file is using for configure db connection, define debug status and include required files.

We have 2 required files for bootstrap - [DB.php](DB.php) and [Utils.php](Utils.php).

[DB.php](DB.php) is using for DB connection, insert, update and get actions. 
This is minimalistic implementation, just for allowing to add and get data for counter usage.
But the class can be extended for more complex usages. 
However, it uses prepared statements to properly secure your queries.

[Utils.php](Utils.php) - there are grouped some helper functions. See the class helpers PHPDoc comments for additional info.

[banner.php](banner.php) - this is our image replacer. We are checking direct access and cached headers(ex: image opened in new tab), for prevent unexpected counts.
All calculation processes done via calling this file from our html markups. 
After it, we are generating image with our page statistics and return to the html.

<b>index1.html, index2.html, index3.html</b> files are simple examples for testing.
The most important thing in these files is line, where we are adding image with <code>src="banner.php"</code>.

<b>errors.log</b> - log file

<b>page_views.sql</b> - db dump. See dump end part for indexes info.

### Usage

Open anyone from index[1,2,3].html files and check the result.
Also, you can check the results in your DB.

#### Note: For security reasons all files are restricted from direct access.

#### Performance

Performance check is done on PHP 8.0/Windows 10/i7-12800H/32G RAM cpu.

100 request/count - 1.21s
1000 request/count - 13.57s