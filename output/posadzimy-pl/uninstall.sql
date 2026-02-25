-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('posadzimy_do_activation_redirect', 'woocommerce_custom_orders_table_enabled', 'posadzimy_balance', 'woocommerce_calc_taxes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_first_name', 'shipping_last_name');

