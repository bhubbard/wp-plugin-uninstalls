#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yelp-url'
wp option delete 'facebook-url'
wp option delete 'display-page'
wp option delete 'display-post'
wp option delete 'yelp-key'
wp option delete 'site_img'
wp option delete 'site_title'
wp option delete 'site_phone'
wp option delete 'site_streetaddr'
wp option delete 'site_cityaddr'
wp option delete 'site_stateaddr'
wp option delete 'site_postaladdr'
wp option delete 'fb-rating'
wp option delete 'fb-count'
wp option delete 'yelp-rating'
wp option delete 'yelp-count'

