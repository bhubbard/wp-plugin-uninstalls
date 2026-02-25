-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coderockz_advance_cod_restriction_settings', 'coderockz_advance_cod_localization_settings', 'coderockz_advance_cod_large_product_list', 'coderockz-wc-advance-cod-free-activation-time', 'coderockz-woo-delivery-license-status', 'woocommerce_currency_pos');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_virtual', '_downloadable');
DELETE FROM wp_usermeta WHERE meta_key IN ('_virtual', '_downloadable');
DELETE FROM wp_termmeta WHERE meta_key IN ('_virtual', '_downloadable');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_virtual', '_downloadable');

