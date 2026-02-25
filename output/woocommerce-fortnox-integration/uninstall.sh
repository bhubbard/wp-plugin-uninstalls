#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fortnox_payment_terms'
wp option delete 'fortnox_access_token'
wp option delete 'fortnox_access_token_oauth2'
wp option delete 'fortnox_connected_organization_number'
wp option delete 'fortnox_enable_purchase_price'
wp option delete 'fortnox_price_lists'
wp option delete 'fortnox_delivery_ways'
wp option delete 'fortnox_refresh_token'
wp option delete 'fortnox_access_token_expiry_time'
wp option delete 'fortnox_organization_number_auth_result'
wp option delete 'fortnox_api_key'
wp option delete 'fortnox_license_key'
wp option delete 'fortnox_db_version'
wp option delete 'fortnox_asset_accounts'
wp option delete 'fortnox_own_capital_and_debts_accounts'
wp option delete 'fortnox_revenue_accounts'
wp option delete 'fortnox_client_id'
wp option delete 'fortnox_auth_code'
wp option delete 'wf_do_not_sync_customer_on_update'
wp option delete 'fortnox_auto_post_refund_invoice'
wp option delete 'fortnox_has_warehouse_module'
wp option delete 'fortnox_auto_set_refund_invoice_as_paid'
wp option delete 'fortnox_cost_center'
wp option delete 'fortnox_auto_create_order_invoice'
wp option delete 'fortnox_auto_set_invoice_as_paid'
wp option delete 'fortnox_auto_post_order_invoice'
wp option delete 'fortnox_auto_send_order_invoice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_invoice_payment_account_%'"
wp option delete 'fortnox_write_payment_type_to_ordertext'
wp option delete 'fortnox_add_customer_notes_to_order'
wp option delete 'fortnox_copy_remarks_to_invoice'
wp option delete 'fortnox_warehouse_delivery_status'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wf_eu_sales_account_%'"
wp option delete 'fortnox_get_currency_rate'
wp option delete 'fortnox_administration_fee_names'
wp option delete 'fortnox_shipping_product_sku_non_eu'
wp option delete 'fortnox_shipping_product_sku'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fortnox_invoice_payment_terms_%'"
wp option delete 'fortnox_auto_generate_sku'
wp option delete 'fortnox_sync_master_product'
wp option delete 'fortnox_predefined_accounts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account'"
wp option delete 'fortnox_default_price_list'
wp option delete 'fortnox_skip_product_variations'
wp option delete 'fortnox_do_not_update_product_on_order_sync'
wp option delete 'fortnox_do_not_sync_price'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'fortnox_organization_number'
wp option delete 'fortnox_order_number_prefix'
wp option delete 'fortnox_auto_sync_products'
wp option delete 'fortnox_auto_sync_orders'
wp option delete 'fortnox_email_synchronization_errors'
wp option delete 'fortnox_upgrades_available'
wp option delete 'fortnox_debug_log'
wp option delete 'fortnox_sync_on_status'
wp option delete 'fortnox_create_invoice_on_status'
wp option delete 'credit_note_on_refund'
wp option delete 'show_organization_number_field_in_billing_address_form'

# Delete Transients
wp transient delete 'fortnox_organisation_auth_secret'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortnox_purchase_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fortnox_sales_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fortnox_sales_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fortnox_sales_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fortnox_sales_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_synced_to_fortnox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_synced_to_fortnox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_synced_to_fortnox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_synced_to_fortnox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
