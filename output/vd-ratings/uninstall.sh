#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_vd_user_login'
wp option delete '_vd_rate_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vd_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vd_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vd_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vd_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vd_user_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vd_user_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vd_user_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vd_user_rate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vd_post_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vd_post_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vd_post_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vd_post_rate'"
