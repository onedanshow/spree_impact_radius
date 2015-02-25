SpreeImpactRadius
=================

Installs tracking code for Impact Radius into default Spree checkout

Installation
------------

Add spree_impact_radius to your Gemfile:

```ruby
gem 'spree_impact_radius', github: 'onedanshow/spree_impact_radius'
```

Set the following environment variable with the URL(s) given to you by Impact Radius:

```
IMPACT_RADIUS_JS_URL=//d33wwcok8lortz.cloudfront.net/js/####/####/irv3.js
```

Common delimit them to include multiple trackers.

```
IMPACT_RADIUS_JS_URL=//d33wwcok8lortz.cloudfront.net/js/####/####/irv3.js,//d33wwcok8lortz.cloudfront.net/js/####/####/irv3.js
```

Free for use by anyone.

Alternatively, if you're using Wombat.co, Impact Radius does have an API for Conversions: http://dev.impactradius.com/display/api/Conversions
