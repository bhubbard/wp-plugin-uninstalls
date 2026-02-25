#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_head'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_top_of_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_above_header'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_below_header'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_above_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_below_content'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_footer'"

