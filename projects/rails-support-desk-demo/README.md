# Rails Support Desk Demo

A small Ruby on Rails CRUD demo for a portfolio project. The app manages support tickets with priorities, statuses, validations, filtering, flash messages, and seed data.

## Why this project exists

This demo shows that a backend developer can move from .NET MVC patterns into Rails conventions: models, controllers, routes, views, migrations, validations, and tests.

## Features

- Create, read, update, and delete support tickets
- Track ticket status: open, in progress, resolved, closed
- Track priority: low, normal, high, urgent
- Filter tickets by status
- Basic model and controller tests
- Seed data for a quick demo

## Run locally

```powershell
bundle install
bin/rails db:setup
bin/rails test
bin/rails server
```

Then open `http://localhost:3000`.

## Suggested deployment

GitHub Pages cannot host a Rails application because Rails needs a server runtime. Deploy this demo to Render, Fly.io, Railway, or a VPS, then update the portfolio project card with the live URL.
