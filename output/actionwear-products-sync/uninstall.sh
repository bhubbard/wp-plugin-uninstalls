#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ACTIONWEAR_SUPPLIER_AVAILABILITY'
wp option delete '_ACTIONWEAR_LAST_RESYNCED_PRODUCTS'
wp option delete '_ACTIONWEAR_PRODUCTS_LANG'
wp option delete '_ACTIONWEAR_HUB_JWT'
wp option delete '_ACTIONWEAR_APIKEY'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'delete_%'"
wp option delete '_ACTIONWEAR_SELECTED_TAXONOMIES'
wp option delete '_ACTIONWEAR_DEFAULT_CATEGORY_ID'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_UPDATE'"
wp option delete '_ACTIONWEAR_IS_PRICE_SYNC_DISABLED'
wp option delete '_ACTIONWEAR_RECHARGE_TYPE_SELECTED'
wp option delete '_ACTIONWEAR_ARE_RECHARGE_TABLES_DISABLED'
wp option delete '_ACTIONWEAR_USE_CONFIGURABLE'
wp option delete '_ACTIONWEAR_API_ERROR'
wp option delete '_ACTIONWEAR_LIST_TYPE_SELECTED'
wp option delete '_ACTIONWEAR_CRONJOB_FROZEN'
wp option delete '_ACTIONWEAR_DEBUG_MODE'
wp option delete '_ACTIONWEAR_LAST_RECHARGES_RESET'
wp option delete '_ACTIONWEAR_LAST_RESET_SETTINGS'
wp option delete '_ACTIONWEAR_INITIAL_SYNC_PROGRESS'
wp option delete '_ACTIONWEAR_ONBOARDING'
wp option delete '_ACTIONWEAR_LOCK'
wp option delete '_ACTIONWEAR_IMAGES_CUSTOMIZATION'
wp option delete '_ACTIONWEAR_SUPPLIER_TYPE'
wp option delete '_ACTIONWEAR_DB_VERSION'
wp option delete '_ACTIONWEAR_DB_UPGRADE_TEST_SUCCESS'
wp option delete '_ACTIONWEAR_LAST_SYNC'
wp option delete '_ACTIONWEAR_PRODUCTS_LANGUAGE'
wp option delete '_ACTIONWEAR_BASE_URL'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'camac_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_base_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_base_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_base_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_base_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cat_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cat_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cat_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cat_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quantity_supplier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quantity_supplier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quantity_supplier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quantity_supplier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_arrivals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_arrivals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_arrivals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_arrivals'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camac_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camac_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camac_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camac_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camac_product_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camac_product_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camac_product_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camac_product_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camac_cdn_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camac_cdn_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camac_cdn_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camac_cdn_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'camac_attachment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'camac_attachment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'camac_attachment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'camac_attachment_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supplier_days'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supplier_days'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supplier_days'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supplier_days'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arrivals_detail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arrivals_detail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arrivals_detail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arrivals_detail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'supplier_detail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'supplier_detail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'supplier_detail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'supplier_detail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
