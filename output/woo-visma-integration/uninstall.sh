#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'visma_do_not_update_customer_on_order_sync'
wp option delete 'visma_organization_number_meta_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'visma_order_sync_settings_%'"
wp option delete 'visma_invoice_payment_bank_account'
wp option delete 'visma_sync_existing_product'
wp option delete 'visma_auto_generate_sku'
wp option delete 'visma_sync_master_product'
wp option delete 'woocommerce_default_country'
wp option delete 'visma_skip_product_variations'
wp option delete 'visma_do_not_sync_price'
wp option delete 'visma_default_price_list'
wp option delete 'visma_auto_set_refund_invoice_as_paid'
wp option delete 'visma_sync_order_method'
wp option delete 'visma_terms_of_payments'
wp option delete 'visma_account_coding'
wp option delete 'visma_units'
wp option delete 'visma_payment_accounts'
wp option delete 'visma_revenue_accounts'
wp option delete 'visma_bank_accounts'
wp option delete 'visma_default_unit'
wp option delete 'visma_shipping_account_se'
wp option delete 'visma_shipping_account_eu'
wp option delete 'visma_shipping_account_world'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_account'"
wp option delete 'visma_domestic_vat_25_account'
wp option delete 'visma_eu_vat_25_account'
wp option delete 'visma_credit_note_on_refund'
wp option delete 'wetail_visma_license_key'
wp option delete 'wetail_license_key'
wp option delete 'visma_sync_orders'
wp option delete 'visma_customer_unique_identifier'
wp option delete 'visma_unique_customer_identifier'
wp option delete 'visma_db_version'
wp option delete 'visma_order_number_prefix'
wp option delete 'visma_needs_login'
wp option delete 'make_organization_number_field_required'
wp option delete 'visma_accounting_settings_are_valid'
wp option delete 'visma_order_sync_settings_are_valid'
wp option delete 'visma_general_settings_are_valid'
wp option delete 'visma_test'
wp option delete 'visma_access_token'
wp option delete 'visma_expiry_time'
wp option delete 'visma_refresh_token'
wp option delete 'latest_visma_pull_sync'
wp option delete 'visma_debug_log'
wp option delete 'visma_credit_voucher_on_refund'
wp option delete 'show_organization_number_field_in_billing_address_form'

# Clear Cron Jobs
wp cron event delete 'wetail_visma_sync_order'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_synced_to_visma'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_synced_to_visma'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_synced_to_visma'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_synced_to_visma'"
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
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
