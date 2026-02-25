#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_xprs_rewrite'
wp option delete 'wp_xprs_home_vbid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_xprs_vbid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_xprs_vbid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_xprs_vbid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_xprs_vbid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_xprs_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_xprs_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_xprs_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_xprs_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_xprs_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_xprs_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_xprs_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_xprs_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_xprs_comments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_xprs_comments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_xprs_comments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_xprs_comments'"
