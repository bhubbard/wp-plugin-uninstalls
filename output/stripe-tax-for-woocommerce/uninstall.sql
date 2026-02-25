-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_ship_to_countries', 'woocommerce_tax_display_shop', 'woocommerce_tax_display_cart', 'stripe_tax_migration', 'stripe_tax_string_tax_rate_id_fixer_as_status', 'stripe_tax_for_woocommerce_settings_update_error_flag', 'stripe_tax_for_woocommerce_activate');
DELETE FROM wp_options WHERE option_name LIKE '%_num_processed_orders';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tax_exemption', '_tax_class');
DELETE FROM wp_usermeta WHERE meta_key IN ('tax_exemption', '_tax_class');
DELETE FROM wp_termmeta WHERE meta_key IN ('tax_exemption', '_tax_class');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tax_exemption', '_tax_class');

