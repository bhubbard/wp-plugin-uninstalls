#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtw_admin_notice'
wp option delete 'rtw_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

