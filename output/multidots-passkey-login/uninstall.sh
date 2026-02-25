#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdlogin_passkey_settings'

# Clear Cron Jobs
wp cron event delete 'mdlogin_passkey_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdlogin_passkey_created_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdlogin_passkey_created_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdlogin_passkey_created_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdlogin_passkey_created_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdlogin_passkey_created_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdlogin_passkey_created_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdlogin_passkey_created_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdlogin_passkey_created_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdlogin_passkey_user_handle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdlogin_passkey_user_handle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdlogin_passkey_user_handle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdlogin_passkey_user_handle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdlogin_passkey_credentials'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdlogin_passkey_credentials'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdlogin_passkey_credentials'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdlogin_passkey_credentials'"
