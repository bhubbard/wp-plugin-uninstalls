-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yaye_settings', 'yaye_stock_flag', 'woocommerce_calc_taxes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yaye_options', '_yaye_status', '_yaye_actions', '_yaye_products', '_yaye_name', '_yaye_description', '_yaye_custom_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yaye_options', '_yaye_status', '_yaye_actions', '_yaye_products', '_yaye_name', '_yaye_description', '_yaye_custom_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yaye_options', '_yaye_status', '_yaye_actions', '_yaye_products', '_yaye_name', '_yaye_description', '_yaye_custom_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yaye_options', '_yaye_status', '_yaye_actions', '_yaye_products', '_yaye_name', '_yaye_description', '_yaye_custom_css');

