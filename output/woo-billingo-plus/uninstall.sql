-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_billingo_plus_auto_invoice_status', 'wc_billingo_plus_auto_void_status', 'wc_billingo_plus_automations', 'wc_billingo_plus_advanced_options', 'wc_billingo_plus_vat_overrides', 'wc_billingo_plus_eusafa', 'wc_billingo_public_key', 'wc_billingo_api_key', '_wc_billingo_plus_migrated', 'wc_billingo_electronic', 'wc_billingo_plus_invoice_type', 'wc_billingo_plus_payment_method_options', '_wc_billingo_plus_migrating', 'wc_billingo_plus_api_key', '_wc_billingo_plus_migrating_finished', '_wc_billingo_plus_migrated_count', '_wc_billingo_pro_enabled', '_wc_billingo_pro_key', '_wc_billingo_pro_email', '_wc_billingo_pro_expiration_date', 'wc_billingo_plus_additional_accounts', 'wc_billingo_plus_notes', 'wc_billingo_plus_rounding_options', '_wc_billingo_plus_db_version', 'wc_billingo_plus_version_number', 'woocommerce_wc_billingo_plus_settings', 'wc_billingo_plus_vat_number_type', 'wc_billingo_plus_invoice_type_company', 'woocommerce_wc_billingo_plus_settings_old', 'surbma_hc_fields', 'woocommerce_prices_include_tax', '_wc_billingo_plus_error', 'active_sitewide_plugins', 'wc_billingo_plus_invoice_blocks', 'wc_billingo_plus_bank_accounts');
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_plus_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_payment_method_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_paymentdue_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_mark_as_paid_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_billingo_proforma_%';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_key';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_meta';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wc_billingo_plus_adoszam', 'billing_tax_number', 'wc_billingo_plus_mennyisegi_egyseg', 'wc_billingo_plus_megjegyzes', 'wc_billingo_plus_tetel_nev', 'wc_billingo_plus_disable_auto_invoice', 'wc_billingo_plus_hide_item', 'wc_billingo_plus_custom_cost', 'wc_billingo_plus_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('wc_billingo_plus_adoszam', 'billing_tax_number', 'wc_billingo_plus_mennyisegi_egyseg', 'wc_billingo_plus_megjegyzes', 'wc_billingo_plus_tetel_nev', 'wc_billingo_plus_disable_auto_invoice', 'wc_billingo_plus_hide_item', 'wc_billingo_plus_custom_cost', 'wc_billingo_plus_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('wc_billingo_plus_adoszam', 'billing_tax_number', 'wc_billingo_plus_mennyisegi_egyseg', 'wc_billingo_plus_megjegyzes', 'wc_billingo_plus_tetel_nev', 'wc_billingo_plus_disable_auto_invoice', 'wc_billingo_plus_hide_item', 'wc_billingo_plus_custom_cost', 'wc_billingo_plus_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wc_billingo_plus_adoszam', 'billing_tax_number', 'wc_billingo_plus_mennyisegi_egyseg', 'wc_billingo_plus_megjegyzes', 'wc_billingo_plus_tetel_nev', 'wc_billingo_plus_disable_auto_invoice', 'wc_billingo_plus_hide_item', 'wc_billingo_plus_custom_cost', 'wc_billingo_plus_admin_notices');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_billingo_plus_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_billingo_plus_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_billingo_plus_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_billingo_plus_%';

