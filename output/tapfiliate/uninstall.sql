-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tap_account_id', 'tap_wc_enabled', 'tap_ec_enabled', 'tap_wc_use_woo_customer_id_for_lifetime', 'tap_wc_connected', 'thank_you_page', 'query_parameter_external_id', 'query_parameter_conversion_amount', 'integrate_for', 'tap_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tapfiliate_category_commission_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('tapfiliate_category_commission_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('tapfiliate_category_commission_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tapfiliate_category_commission_type');

