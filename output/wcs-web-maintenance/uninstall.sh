#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%body_html'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%roles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%head_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%body_title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%body_subtitle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%body_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_bg'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_text'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_link'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_link2'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%color_icon'"

