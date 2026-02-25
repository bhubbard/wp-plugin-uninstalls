#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_vars'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_from_api'"

