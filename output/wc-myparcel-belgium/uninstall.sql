-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wcmyparcelbe_admin_notices', 'wcmyparcelbe_print_queue', 'wcmyparcelbe_admin_error_notices', 'wcmyparcelbe_admin_error_notice', 'woocommerce_weight_unit', 'myparcelbe_hide_be_notice', 'woocommerce_force_ssl_checkout', 'woocommerce_shipping_tax_class', 'wcmyparcelbe_settings', 'woocommerce_myparcelbe_general_settings', 'woocommerce_myparcelbe_export_defaults_settings', 'woocommerce_myparcelbe_checkout_settings', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_street_name', 'billing_house_number', 'billing_house_number_suffix', 'shipping_street_name', 'shipping_house_number', 'shipping_house_number_suffix');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_street_name', 'billing_house_number', 'billing_house_number_suffix', 'shipping_street_name', 'shipping_house_number', 'shipping_house_number_suffix');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_street_name', 'billing_house_number', 'billing_house_number_suffix', 'shipping_street_name', 'shipping_house_number', 'shipping_house_number_suffix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_street_name', 'billing_house_number', 'billing_house_number_suffix', 'shipping_street_name', 'shipping_house_number', 'shipping_house_number_suffix');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_street_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_street_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_street_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_street_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_house_number';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_house_number';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_house_number';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_house_number';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_house_number_suffix';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_house_number_suffix';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_house_number_suffix';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_house_number_suffix';

