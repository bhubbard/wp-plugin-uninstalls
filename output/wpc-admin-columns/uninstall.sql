-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcac_settings', 'woocommerce_custom_orders_table_enabled', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcac_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpcac_get_users_meta_keys_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcac_intro_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcac_intro_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcac_intro_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcac_intro_%';

