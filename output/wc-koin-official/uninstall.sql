-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_koin_settings_status', 'wc_koin_settings_override_number_fields', 'wc_koin_settings_override_document_fields', 'wc_koin_settings_transacting_countries', 'wc_koin_settings_environment', 'wc_koin_settings_code', 'wc_koin_settings_account', 'wc_koin_settings_custom_document_field', 'wc_koin_settings_sync', 'wc_koin_settings_my_account', 'wc_koin_settings_secret_key', 'wc_koin_settings_org_id', 'koin_settings_compatibility', 'wko_koin_db_version', 'woocommerce_email_footer_text');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_koin_blank_link', 'wc-koin-official_order_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_koin_blank_link', 'wc-koin-official_order_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_koin_blank_link', 'wc-koin-official_order_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_koin_blank_link', 'wc-koin-official_order_id');

