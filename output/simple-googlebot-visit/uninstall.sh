#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_pages'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_entries'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_products'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_active_custom_types'"

