#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_force_ssl_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activate_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_default_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_price_auto_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_regular_price_auto_update'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_price_auto_update_period'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currency_conversion_factor'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_not_available_product_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_link_from_desc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_img_from_desc'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_update_per_schedule'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_import_product_images_limit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_min_product_quantity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_max_product_quantity'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_use_proxy'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_proxies_list'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_language'"
wp option delete 'active_sitewide_plugins'
wp option delete 'aidn_remove_img_from_desc'
wp option delete 'aidn_remove_link_from_desc'
wp option delete 'aeidn_ali_per_page'
wp option delete 'aeidn_ali_links_to_affiliate'
wp option delete 'aeidn_ali_local_currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ali_local_currency'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ali_links_to_affiliate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ali_per_page'"
wp option delete 'aeidn_currency_conversion_factor'
wp option delete 'aeidn_tr_aliexpress_language'
wp option delete 'aidn_amazon_default_site'
wp option delete 'aidn_amazon_per_page'
wp option delete 'aidn_currency_conversion_factor'
wp option delete 'ebdn_ebay_custom_id'
wp option delete 'ebdn_ebay_geo_targeting'
wp option delete 'ebdn_ebay_network_id'
wp option delete 'ebdn_ebay_tracking_id'
wp option delete 'ebdn_ebay_per_page'
wp option delete 'ebdn_ebay_extends_cats'
wp option delete 'ebdn_currency_conversion_factor'
wp option delete 'ebdn_ebay_using_woocommerce_currency'
wp option delete 'envato_currency_conversion_factor'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_version_data' OR option_name LIKE '_site_transient_%_version_data'"
wp transient delete 'wc_attribute_taxonomies'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seller_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_filters'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_import'"
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
