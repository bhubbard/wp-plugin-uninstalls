#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gicapi_base_url'
wp option delete 'gicapi_consumer_key'
wp option delete 'gicapi_consumer_secret'
wp option delete 'gicapi_complete_orders'
wp option delete 'gicapi_add_to_email'
wp option delete 'gicapi_add_to_order_details'
wp option delete 'gicapi_add_to_thank_you'
wp option delete 'gicapi_enable'
wp option delete 'gicapi_gift_i_card_create_order_status'
wp option delete 'gicapi_gift_i_card_confirm_order_status'
wp option delete 'gicapi_auto_complete_orders'
wp option delete 'gicapi_change_failed_status'
wp option delete 'gicapi_failed_status'
wp option delete 'gicapi_hook_priority'
wp option delete 'gicapi_enable_cron_updates'
wp option delete 'gicapi_cron_interval'
wp option delete 'gicapi_change_cancelled_status'
wp option delete 'gicapi_cancelled_status'
wp option delete 'gicapi_products_sync_enabled'
wp option delete 'gicapi_products_sync_interval'
wp option delete 'gicapi_instant_status'
wp option delete 'gicapi_manual_status'
wp option delete 'gicapi_outofstock_status'
wp option delete 'gicapi_deleted_status'
wp option delete 'gicapi_auto_sync_enabled'
wp option delete 'gicapi_sync_batch_size'
wp option delete 'gicapi_price_sync_enabled'
wp option delete 'gicapi_default_profit_margin'
wp option delete 'gicapi_profit_margin_type'
wp option delete 'gicapi_stock_sync_enabled'
wp option delete 'gicapi_complete_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gicapi_variant_price_sync_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gicapi_variant_profit_margin_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gicapi_variant_profit_margin_type_%'"
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'woocommerce_price_decimal_sep'
wp option delete 'woocommerce_price_thousand_sep'
wp option delete 'gicapi_batch_sync_progress'
wp option delete 'gicapi_sync_interval'

# Delete Transients
wp transient delete 'gicapi_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_is_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_is_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_is_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_is_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_mapped_wc_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_mapped_wc_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_mapped_wc_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_mapped_wc_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_mapped_product_skus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_mapped_product_skus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_mapped_product_skus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_mapped_product_skus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_price_sync_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_price_sync_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_price_sync_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_price_sync_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_profit_margin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_profit_margin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_profit_margin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_profit_margin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_profit_margin_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_profit_margin_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_profit_margin_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_profit_margin_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_stock_sync_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_stock_sync_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_stock_sync_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_stock_sync_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_mapped_category_skus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_mapped_category_skus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_mapped_category_skus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_mapped_category_skus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_mapped_variant_skus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_mapped_variant_skus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_mapped_variant_skus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_mapped_variant_skus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_variant_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_variant_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_variant_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_variant_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_variant_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_variant_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_variant_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_variant_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_category_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_category_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_category_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_category_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_product_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_product_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_product_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_product_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_attribute_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_attribute_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_attribute_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_attribute_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_process_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_process_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_process_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_process_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gicapi_orders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gicapi_orders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gicapi_orders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gicapi_orders'"
