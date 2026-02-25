#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_smart_brand_settings'
wp option delete 'smart_brands_migration_done'
wp option delete 'smart_brands_version'
wp option delete 'smart_brands_first_version'
wp option delete 'smart_brands_activation_date'
wp option delete 'smart_brands_db_version'
wp option delete 'sp_smart_brands_review_notice_dismiss'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sp_smart_brand_page_id%'"
wp option delete 'woocommerce_version'
wp option delete 'smart_brands_brand_taxonomy'

# Delete Transients
wp transient delete 'spsbf_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_smart_brand_taxonomy_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_smart_brand_taxonomy_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_smart_brand_taxonomy_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_smart_brand_taxonomy_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_smart_brand_metaboxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_smart_brand_metaboxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_smart_brand_metaboxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_smart_brand_metaboxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_smart_brand_metabox_layouts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_smart_brand_metabox_layouts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_smart_brand_metabox_layouts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_smart_brand_metabox_layouts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
