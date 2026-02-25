#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nsaw_fb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nsaw_fb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nsaw_fb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nsaw_fb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nsaw_twitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nsaw_twitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nsaw_twitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nsaw_twitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nsaw_gp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nsaw_gp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nsaw_gp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nsaw_gp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nsaw_yt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nsaw_yt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nsaw_yt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nsaw_yt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nsaw_li'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nsaw_li'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nsaw_li'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nsaw_li'"
