#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_used_tab'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_stamp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%flush_rules'"
wp option delete 'iworks_wp_sitemap_control_taxonomies'

