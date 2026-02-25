#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ust_settings'
wp option delete 'sust_max_login_attempts'
wp option delete 'sust_login_grace_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sust_lastpasswords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sust_lastpasswords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sust_lastpasswords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sust_lastpasswords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sust_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sust_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sust_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sust_locked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sust_fail_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sust_fail_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sust_fail_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sust_fail_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sust_last_login_fail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sust_last_login_fail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sust_last_login_fail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sust_last_login_fail'"
