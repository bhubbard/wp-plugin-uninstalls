#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table_countries'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table_addresses'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%table_ipv6'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_ipv4_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_ipv6_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_source'"

