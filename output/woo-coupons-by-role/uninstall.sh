#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_tab_hide_coupons_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_settings_tab_hide_coupons_message_%'"

