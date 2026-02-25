#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usrtk_can_login'
wp option delete '_user_switch_temp_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'can_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'can_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'can_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'can_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'when_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_um_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_um_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_um_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_um_last_login'"
