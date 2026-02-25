#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dh_login'
wp option delete 'dh_tfa'
wp option delete 'dh_google_tfa_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_tfa_feature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_tfa_feature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_tfa_feature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_tfa_feature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_user_login_tfa_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_user_login_tfa_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_user_login_tfa_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_user_login_tfa_verified'"
