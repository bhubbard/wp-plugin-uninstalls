#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_num_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_num_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_num_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_num_comments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_num_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_num_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_num_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_num_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nd_viewed_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nd_viewed_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nd_viewed_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nd_viewed_posts'"
