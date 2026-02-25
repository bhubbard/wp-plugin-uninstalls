#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%new-window'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ribbon-position'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%bottom-for-mobile'"

