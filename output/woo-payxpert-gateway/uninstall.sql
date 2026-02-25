-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payxpert_seamless_library', 'payxpert_conn_status', 'payxpert_originator_id', 'payxpert_password', 'woocommerce_version', 'woocommerce_email_header_image', 'payxpert_settings_saved', 'payxpert_admin_error', 'payxpert_admin_success', 'payxpert_admin_info');
DELETE FROM wp_options WHERE option_name LIKE '%_enabled';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payxpert_paybylink_last_sent', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payxpert_paybylink_last_sent', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payxpert_paybylink_last_sent', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payxpert_paybylink_last_sent', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_email', 'billing_phone');

