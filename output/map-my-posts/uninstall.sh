#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_category_country_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_category_marker_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_tag_country_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_post_tag_marker_list'"

