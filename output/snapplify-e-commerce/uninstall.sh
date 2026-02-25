#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcsnapplify_debug_logging'
wp option delete 'wcsnapplify_download_product'
wp option delete 'wcsnapplify_auto_publish'
wp option delete 'wcsnapplify_auto_unpublish_unavailable'
wp option delete 'wcsnapplify_manage_categories'
wp option delete 'wcsnapplify_last_incoming_push_time'
wp option delete 'wcsnapplify_strict_validation'
wp option delete 'wcsnapplify_token'
wp option delete 'wcsnapplify_last_processed_time'
wp option delete 'wcsnapplify_ext_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_cat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_cat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_cat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_cat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_imageUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_imageUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_imageUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_imageUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snap_takeDown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snap_takeDown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snap_takeDown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snap_takeDown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snplfy_sso_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snplfy_sso_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snplfy_sso_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snplfy_sso_id'"
