#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'zempr_active_scripts_v1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zempr_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zempr_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zempr_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zempr_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zempr_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zempr_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zempr_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zempr_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zempr_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zempr_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zempr_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zempr_post_ids'"
