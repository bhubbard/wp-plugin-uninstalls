#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_wds_var_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arrowd_disable_guttenberg_from_wds_var_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_wds_var_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_wds_var_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_pages_var_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arrowd_disable_guttenberg_from_pages_var_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_pages_var_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_pages_var_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_posts_var_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arrowd_disable_guttenberg_from_posts_var_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_posts_var_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_posts_var_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_all_var_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arrowd_disable_guttenberg_from_all_var_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_all_var_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arrowd_disable_guttenberg_from_all_var_meta'"
