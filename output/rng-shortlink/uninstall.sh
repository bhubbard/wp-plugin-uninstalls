#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rngshl_general_setting_option'
wp option delete 'rngshl_configure_dismiss'
wp option delete 'rngshl_first_flush'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shl_click_event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shl_click_event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shl_click_event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shl_click_event'"
