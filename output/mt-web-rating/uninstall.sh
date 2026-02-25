#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%google_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%tripadvisor_id'"

