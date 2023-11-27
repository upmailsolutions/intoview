# README

This repo is a part of an interview process. It's a minimal rails app, with one deliberate bug that was introduced.
Your task is to investigade the bug, write a bug report, and decide on a fix. You do NOT need to implement the fix.

## Your task
- Determine the cause of the bug
- Decide on a fix (you do not need to implement it)
- Write a short report of your investigation, and your decision on the fix. The format of this report is up to you, but
you should write it as if you were reporting to a real team about a real bug.

You should aim to spend 30-60 minutes, it's not intended to take much longer.

## What we are looking for

Your technical ability is not the focus here. We are looking for your ability to:
- Investigate a bug
- Understand the business and products implications
- Fill in the blanks when you don't have perfect information
- Decide on an appropriate fix, pragmatic but not hacky
- Communicate your findings to the wider team
- Improve the state of our product in small steps

If you hit a point where you need product input, feel free to invent some product input so that you can continue. Simply
document the questions you need answered, and the direction you chose.

For example: "I want to know if it's ok for the app to suffer downtime during a fix. I assumed "yes", because this is an
internal app with a small number of users". You can invent any product answer as long as you document it.

## Context

Remember that we are a startup focussing on product iteration. Pragmatic choices are heavily favoured over theoretical
best practice. For us, perfect is the enemy of good.

## App Description

IntoView is a fictional internal app used by HonestRealtors™️ to manage viewings and property listings.
It's a mostly internal app, though they ocassionaly share property pages with clients, or on listings.

## Installation

Note: The entire bug report can be written without running the app, but we include details here in case you want to.

1. Clone the repo to your local machine
2. Ensure you have the correct version of ruby installed (we recommend using asdf or rbenv). Check .tool-versions for details.
3. Run `bundle install` to install the gems
4. Run `rails test` to ensure all tests are passing
5. Run `rails s` to start the server

⚠️ When you have read the entire README, you can run `rails db:seed` to seed the database with a copy of "production"
data, taken from when the bug was reported. This will allow you to see the bug in action.

## Bug Details

An error was reported on slack around 10am on Monday 27th November, 2023. All of our agents are seeing a 500 error.

The most recent deployment was on Friday 24th November, several days before. The app has been working fine for multiple
days after that. The deployment went through staging and was tested by the developer at the time.

The app is actively used during weekends by the realtor agents, though they often log updates on a Monday when they are
back in the office.

We have a stacktrace from Sentry.io:

```
Started GET "/" for ::1 at 2023-11-27 10:05:06 +0000
Processing by PropertiesController#index as HTML
  Rendering layout layouts/application.html.erb
  Rendering properties/index.html.erb within layouts/application
  Property Load (0.1ms)  SELECT "properties".* FROM "properties"
  ↳ app/views/properties/index.html.erb:14
  Rendered collection of properties/_property.html.erb [52 times] (Duration: 1.3ms | Allocations: 3503)
  Rendered properties/index.html.erb within layouts/application (Duration: 4.1ms | Allocations: 8308)
  Rendered layout layouts/application.html.erb (Duration: 4.2ms | Allocations: 8400)
Completed 500 Internal Server Error in 6ms (ActiveRecord: 1.0ms | Allocations: 10097)

ActionView::Template::Error (No route matches {:action=>"show", :controller=>"properties", :id=>nil}, possible unmatched constraints: [:id]):
    14:   </p>
    15:
    16:   <% if action_name != "show" %>
    17:     <%= link_to "Show this property", property_path(id: property.slug&.downcase), class: "rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium" %>
    18:     <%= link_to "Edit this property", edit_property_path(property), class: "rounded-lg py-3 ml-2 px-5 bg-gray-100 inline-block font-medium" %>
    19:     <hr class="mt-6">
    20:   <% end %>

app/views/properties/_property.html.erb:17
app/views/properties/index.html.erb:14
```
