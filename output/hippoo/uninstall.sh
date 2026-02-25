#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hippoo_ai_settings'
wp option delete 'hippoo_settings'
wp option delete 'hippoo_activation_time'
wp option delete 'hippoo_review_dismissed'
wp option delete 'hippoo_rest_api_last_status'
wp option delete 'hippoo_rest_api_error_dismissed'
wp option delete 'hippoo_permissions_settings'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'hippoo_invoice_settings'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'woocommerce_all_except_countries'
wp option delete 'hippoo_notification_db_version'
wp option delete 'woocommerce_store_address'
wp option delete 'hippoo_dismissed_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'out_stock_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'out_stock_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'out_stock_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'out_stock_time'"
