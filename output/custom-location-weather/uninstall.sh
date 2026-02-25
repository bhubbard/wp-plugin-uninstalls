#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custweather_api_key'
wp option delete 'custweather_city'
wp option delete 'custweather_country_code'
wp option delete 'custweather_default_unit'
wp option delete 'clw_api_key'

