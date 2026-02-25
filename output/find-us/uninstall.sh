#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dprx_find_us_mode'
wp option delete 'dprx_find_us_mtypes'
wp option delete 'dprx_find_us_apikey'
wp option delete 'dprx_find_us_width'
wp option delete 'dprx_find_us_height'
wp option delete 'dprx_find_us_ctype'
wp option delete 'dprx_find_us_location'
wp option delete 'dprx_find_us_location_end_lat'
wp option delete 'dprx_find_us_location_end_lon'

