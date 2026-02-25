-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eshop_plugin_settings', '_site_transient_update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_eshop_stock', '_eshop_csv_exp_backup');
DELETE FROM wp_usermeta WHERE meta_key IN ('_eshop_stock', '_eshop_csv_exp_backup');
DELETE FROM wp_termmeta WHERE meta_key IN ('_eshop_stock', '_eshop_csv_exp_backup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_eshop_stock', '_eshop_csv_exp_backup');

