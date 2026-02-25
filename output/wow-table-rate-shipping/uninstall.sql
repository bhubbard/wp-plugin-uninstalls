-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtrs_carrier_cache_version', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_default_country', 'edd_wtrs_license_key', 'woocommerce_price_decimal_sep', 'woocommerce_price_num_decimals', 'woocommerce_currency_pos', 'edd_wtrs_license_data', 'woocommerce_store_postcode', 'woocommerce_store_city', 'woocommerce_store_address', 'woocommerce_store_address_2', 'active_sitewide_plugins', 'wtrs-settings', 'wtrs-shipping-rules', 'wtrs_rule_import_job_status', 'durbin_country_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('thumbnail_id');

