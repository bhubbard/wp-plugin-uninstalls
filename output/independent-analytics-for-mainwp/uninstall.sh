#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_APIManAdder'"
wp option delete 'mainwp_pro_reports_my_custom_settings'

