-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_dimension_unit', 'woocommerce_weight_unit', 'myparcel_hide_be_notice', 'woocommerce_myparcel_dashboard_widget', 'woocommerce_force_ssl_checkout', 'woocommerce_shipping_tax_class', 'wcmyparcel_settings', 'woocommerce_myparcel_general_settings', 'woocommerce_myparcel_export_defaults_settings', 'woocommerce_myparcel_checkout_settings', 'use_myparcel_staging_environment', 'myparcel_base_url', 'active_sitewide_plugins');

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

