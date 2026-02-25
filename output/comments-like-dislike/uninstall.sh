#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cld_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_dislike_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_dislike_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_dislike_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_dislike_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_ips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_ips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_ips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_ips'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_ips_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_ips_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_ips_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_ips_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cld_users_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cld_users_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cld_users_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cld_users_info'"
