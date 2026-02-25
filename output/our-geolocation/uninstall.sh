#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'our-geolocation-getdir'
wp option delete 'our-geolocation-address'
wp option delete 'our-geolocation-latitude'
wp option delete 'our-geolocation-longitude'
wp option delete 'our-geolocation-width'
wp option delete 'our-geolocation-height'

