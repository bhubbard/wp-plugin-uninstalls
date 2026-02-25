#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_wopb_license_key'
wp option delete 'edd_wopb_license_status'
wp option delete 'edd_wopb_license_expire'
wp option delete 'default_product_cat'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'sendgrid_from_name'
wp option delete 'sendgrid_from_email'
wp option delete 'wpseo_titles'
wp option delete 'woocommerce_manage_stock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_force_ssl_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"

# Delete Transients
wp transient delete 'wopb_helloBar'

# Clear Cron Jobs
wp cron event delete 'sk_sync_paid_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wopb_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storekeeper_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storekeeper_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storekeeper_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storekeeper_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_attribute_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_focus_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metakeywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storekeeper_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storekeeper_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storekeeper_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storekeeper_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_item_storekeeper_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_item_storekeeper_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_item_storekeeper_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_item_storekeeper_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'menu_storekeeper_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'menu_storekeeper_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'menu_storekeeper_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'menu_storekeeper_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'storekeeper_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'storekeeper_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'storekeeper_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'storekeeper_sync_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'attribute_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'attribute_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'attribute_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'attribute_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocksy_taxonomy_meta_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color_hex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color_hex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color_hex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color_hex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cdn_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cdn_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cdn_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cdn_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_cdn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_cdn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_cdn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_cdn'"
