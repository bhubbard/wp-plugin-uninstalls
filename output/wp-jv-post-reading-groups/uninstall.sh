#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_jv_prg_rg_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jv_user_rg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jv_user_rg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jv_user_rg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jv_user_rg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_jv_post_rg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_jv_post_rg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_jv_post_rg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_jv_post_rg'"
