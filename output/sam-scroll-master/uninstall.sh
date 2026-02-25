#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_device_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_excluded_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_excluded_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_excluded_terms'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_load_admin_js'"

