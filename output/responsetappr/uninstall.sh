#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'responsetap_wp_website_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_website_id'"

