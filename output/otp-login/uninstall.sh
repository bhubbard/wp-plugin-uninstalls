#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otpl_enable'
wp option delete 'otpl_register_url'
wp option delete 'otpl_login_attempt'
wp option delete 'otpl_login_locktime'
wp option delete 'otpl_redirect_url'
wp option delete 'otpl_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpl_login_attempts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpl_login_attempts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpl_login_attempts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpl_login_attempts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'otpl_last_failed_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'otpl_last_failed_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'otpl_last_failed_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'otpl_last_failed_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'emilotp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'emilotp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'emilotp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'emilotp'"
