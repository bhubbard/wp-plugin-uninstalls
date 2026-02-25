#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfbr_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'wprevpro_yelp_settings'

