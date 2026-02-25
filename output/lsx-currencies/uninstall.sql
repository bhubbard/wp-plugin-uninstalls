-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_lsx-to_settings', '_lsx_settings', '_lsx_lsx-settings', 'lsx_currencies_rates');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('additional_prices', 'currency', 'price_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('additional_prices', 'currency', 'price_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('additional_prices', 'currency', 'price_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('additional_prices', 'currency', 'price_type');

