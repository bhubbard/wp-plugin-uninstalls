#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_restaurant'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_facebook'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_instagram'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_twitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_linkedin'"
wp option delete 'wp_mor_resto_restaurant'

