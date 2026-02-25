#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpc_filter_settings'
wp option delete 'wpc_filter_permalinks'
wp option delete 'icl_sitepress_settings'
wp option delete 'widget_wpc_sorting_widget'
wp option delete 'wpc_seo_rules_settings'
wp option delete 'wpc_first_install'
wp option delete 'wpc_filter_experimental'
wp option delete 'active_sitewide_plugins'
wp option delete 'default_product_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_filter_set_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_filter_set_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_filter_set_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_filter_set_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpc_filter_set_query_vars'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpc_filter_set_query_vars'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpc_filter_set_query_vars'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpc_filter_set_query_vars'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customize_changeset_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwb_brand_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image'"
