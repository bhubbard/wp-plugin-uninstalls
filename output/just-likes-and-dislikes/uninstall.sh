#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jlad_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jlad_like_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jlad_like_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jlad_like_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jlad_like_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jlad_dislike_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jlad_dislike_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jlad_dislike_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jlad_dislike_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jlad_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jlad_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jlad_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jlad_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jlad_ips'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jlad_ips'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jlad_ips'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jlad_ips'"
