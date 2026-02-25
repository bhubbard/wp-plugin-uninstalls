#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Version-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Settings-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Plugin-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'WP_Admin_Page_Plugin%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_'"
wp option delete '_check-variables_'
wp option delete 'QMCV_options'

