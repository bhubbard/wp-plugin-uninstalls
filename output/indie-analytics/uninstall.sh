#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_provider'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_domain'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exclude_admins'"

