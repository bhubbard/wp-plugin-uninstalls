#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sunday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_monday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tuesday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_wednesday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_thursday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_friday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saturday'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_highlightCurrent'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_highlightStyle'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_highlightColor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currentDayOnly'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dense'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_format24hour'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_last_name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token'"

