-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('visma_do_not_update_customer_on_order_sync', 'visma_organization_number_meta_key', 'visma_invoice_payment_bank_account', 'visma_sync_existing_product', 'visma_auto_generate_sku', 'visma_sync_master_product', 'woocommerce_default_country', 'visma_skip_product_variations', 'visma_do_not_sync_price', 'visma_default_price_list', 'visma_auto_set_refund_invoice_as_paid', 'visma_sync_order_method', 'visma_terms_of_payments', 'visma_account_coding', 'visma_units', 'visma_payment_accounts', 'visma_revenue_accounts', 'visma_bank_accounts', 'visma_default_unit', 'visma_shipping_account_se', 'visma_shipping_account_eu', 'visma_shipping_account_world', 'visma_domestic_vat_25_account', 'visma_eu_vat_25_account', 'visma_credit_note_on_refund', 'wetail_visma_license_key', 'wetail_license_key', 'visma_sync_orders', 'visma_customer_unique_identifier', 'visma_unique_customer_identifier', 'visma_db_version', 'visma_order_number_prefix', 'visma_needs_login', 'make_organization_number_field_required', 'visma_accounting_settings_are_valid', 'visma_order_sync_settings_are_valid', 'visma_general_settings_are_valid', 'visma_test', 'visma_access_token', 'visma_expiry_time', 'visma_refresh_token', 'latest_visma_pull_sync', 'visma_debug_log', 'visma_credit_voucher_on_refund', 'show_organization_number_field_in_billing_address_form');
DELETE FROM wp_options WHERE option_name LIKE 'visma_order_sync_settings_%';
DELETE FROM wp_options WHERE option_name LIKE '%_account';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_synced_to_visma', '_regular_price', '_sale_price', '_price', '_order_number', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_synced_to_visma', '_regular_price', '_sale_price', '_price', '_order_number', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_synced_to_visma', '_regular_price', '_sale_price', '_price', '_order_number', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_synced_to_visma', '_regular_price', '_sale_price', '_price', '_order_number', '_sku');

