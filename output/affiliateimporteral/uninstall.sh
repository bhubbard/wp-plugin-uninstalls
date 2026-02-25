#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeidn_activate_redirect'
wp option delete 'aeidn_use_proxy'
wp option delete 'aeidn_proxies_list'
wp option delete 'aeidn_db_version'
wp option delete 'aeidn_default_type'
wp option delete 'aeidn_default_status'
wp option delete 'aeidn_price_auto_update'
wp option delete 'aeidn_regular_price_auto_update'
wp option delete 'aeidn_price_auto_update_period'
wp option delete 'aeidn_currency_conversion_factor'
wp option delete 'aeidn_not_available_product_status'
wp option delete 'aeidn_remove_link_from_desc'
wp option delete 'aeidn_remove_img_from_desc'
wp option delete 'aeidn_update_per_schedule'
wp option delete 'aeidn_import_product_images_limit'
wp option delete 'aeidn_min_product_quantity'
wp option delete 'aeidn_max_product_quantity'
wp option delete 'aeidn_tr_aliexpress_language'
wp option delete 'aeidn_tr_aliexpress_bing_secret'
wp option delete 'aeidn_tr_aliexpress_bing_client_id'
wp option delete 'aeidn_ali_per_page'
wp option delete 'aeidn_ali_links_to_affiliate'
wp option delete 'aeidn_ali_local_currency'
wp option delete 'aeidn_per_page'
wp option delete 'aeidn_import_attributes'
wp option delete 'aeidn_import_extended_attribute'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"

# Clear Cron Jobs
wp cron event delete 'aeidn_update_price_event'
wp cron event delete 'aeidn_schedule_post_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aeidn_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aeidn_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aeidn_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aeidn_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'import_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aeidn_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aeidn_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aeidn_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aeidn_import'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'original_product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'original_product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'original_product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'original_product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ship_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ship_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ship_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ship_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'discount_perc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'discount_perc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'discount_perc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'discount_perc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
