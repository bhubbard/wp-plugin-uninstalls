-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aco_wc_checkout_fields', 'aco_wc_checkout_default_fields', 'awcfe_aco_pdf', 'ship_to_different_address', 'remove_order_notes_title', 'order_Notes_Title', 'force_create_Account', 'privacy_text', 'checkout_coupon_form', 'remove_shipping_field', 'remove_terms_condition', 'awcfe_install_date', 'awcfe_rate_us', 'woocommerce_custom_orders_table_data_sync_enabled', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc_address_book_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_address_nickname';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_address_nickname';

