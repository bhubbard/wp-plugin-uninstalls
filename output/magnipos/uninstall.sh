#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magni_pos_license_key'
wp option delete 'magni_pos_item_id'
wp option delete 'mp_deleted_last_log'
wp option delete 'mp_deleted_last_log_da'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_store_state'
wp option delete 'wps_wpr_settings_gallery'
wp option delete 'woocommerce_prices_include_tax'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_billing_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_billing_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_billing_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_billing_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'balance_due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'balance_due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'balance_due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'balance_due_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'balance_total_due'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'balance_total_due'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'balance_total_due'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'balance_total_due'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_order_total_purchase'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_order_total_purchase'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_order_total_purchase'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_order_total_purchase'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gstin_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gstin_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gstin_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gstin_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_stock_increased'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_stock_increased'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_stock_increased'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_stock_increased'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mp_firebase_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mp_firebase_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mp_firebase_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mp_firebase_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_device'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwt_auth_pass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwt_auth_pass'"
