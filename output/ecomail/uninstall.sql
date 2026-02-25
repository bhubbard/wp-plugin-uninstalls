-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'mapy_cz_api_key', 'wpify_logs_max_files', 'woocommerce_weight_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ecomail_subscribe');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ecomail_subscribe');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ecomail_subscribe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ecomail_subscribe');

