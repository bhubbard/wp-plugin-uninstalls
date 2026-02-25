#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nb_new_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notice_bar_setting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notice_bar_setting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notice_bar_setting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notice_bar_setting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscriber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscriber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscriber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscriber'"
