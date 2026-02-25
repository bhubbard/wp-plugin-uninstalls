#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'momo_wsw_settings'
wp option delete 'momo_wsw_export_settings'
wp option delete 'momo_wsw_api_cache_settings'
wp option delete 'momo_wsw_orders_settings'
wp option delete 'momowsw_options'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_manage_stock'
wp option delete 'momo_wsw_multistore_multiple_stores'
wp option delete 'momo_wsw_as_import_settings'
wp option delete 'momo_wsw_as_export_settings'
wp option delete 'momo_wsw_ebay_sync'
wp option delete 'momo_wsw_es_export'
wp option delete 'momo_wsw_ebay_policies'
wp option delete 'momo_wsw_ebay_location'
wp option delete 'momo_wsw_as_order_import_settings'
wp option delete 'momo_wsw_as_order_export_settings'
wp option delete 'momo_wsw_multistore_order_sync'
wp option delete 'momo_wsw_multistore_import'
wp option delete 'momo_wsw_as_article_import_settings'
wp option delete 'momo_wsw_as_article_export_settings'
wp option delete 'momo_wsw_as_customer_import_settings'
wp option delete 'momo_wsw_as_customer_export_settings'
wp option delete 'momo_wsw_as_page_import_settings'
wp option delete 'momo_wsw_as_page_export_settings'
wp option delete 'momo_wsw_pf_product_feeds'
wp option delete 'momo_wsw_webhooks_settings'
wp option delete 'momo_wsw_webhooks_ajax'
wp option delete 'momo_wsw_sharing_settings'
wp option delete 'momo_wsw_sharing_ajax'
wp option delete 'momo_facebook_sharing'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_momo_momowsw_single_product_%' OR option_name LIKE '_site_transient_momo_momowsw_single_product_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_momo_momowsw_all_products_%' OR option_name LIKE '_site_transient_momo_momowsw_all_products_%'"
wp transient delete 'mowsw_shopify_order_count'
wp transient delete 'mommowsw_ebay_access_token'
wp transient delete 'mommowsw_ebay_refresh_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%s_' OR option_name LIKE '_site_transient_%s_'"
wp transient delete 'momowsw_fb_sharing_admin_notice'
wp transient delete 'facebook_access_token'
wp transient delete 'facebook_pages'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_fulfillment_tracking_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_fulfillment_tracking_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_fulfillment_tracking_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_fulfillment_tracking_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_fulfillment_tracking_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_fulfillment_tracking_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_fulfillment_tracking_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_fulfillment_tracking_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_fulfillment_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_fulfillment_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_fulfillment_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_fulfillment_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_fulfillment_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_fulfillment_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_fulfillment_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_fulfillment_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_momo_shopify_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_momo_shopify_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_momo_shopify_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_momo_shopify_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_fulfillment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_fulfillment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_fulfillment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_fulfillment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_momo_shopify_single_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_momo_shopify_single_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_momo_shopify_single_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_momo_shopify_single_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_province'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_province'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_province'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_province'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_shopify_shop_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_shopify_shop_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_shopify_shop_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_shopify_shop_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_page_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_article_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_address_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_country'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shipping_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_ebay_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_ebay_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_ebay_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_ebay_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_momo_ebay_offer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_momo_ebay_offer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_momo_ebay_offer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_momo_ebay_offer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'momowsw_order_shopify_shop_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'momowsw_order_shopify_shop_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'momowsw_order_shopify_shop_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'momowsw_order_shopify_shop_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_momo_shopify_variation_inventory_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_momo_shopify_variation_inventory_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_momo_shopify_variation_inventory_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_momo_shopify_variation_inventory_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_momo_shopify_inventory_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_momo_shopify_inventory_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_momo_shopify_inventory_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_momo_shopify_inventory_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_facebook_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_facebook_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_facebook_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_facebook_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_facebook_page_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_facebook_page_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_facebook_page_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_facebook_page_id'"
