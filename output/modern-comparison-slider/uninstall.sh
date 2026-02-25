#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_shadow'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_color'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_startingpoint'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_hoverstart'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smoothing'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_smoothingamount'"

