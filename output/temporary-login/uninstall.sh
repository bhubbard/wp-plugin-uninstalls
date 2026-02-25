#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_temporary_login_site_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_login_pointer_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_login_pointer_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_login_pointer_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_login_pointer_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_login_created_by_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_login_created_by_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_login_created_by_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_login_created_by_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_login_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_login_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_login_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_login_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_temporary_login_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_temporary_login_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_temporary_login_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_temporary_login_expiration'"
