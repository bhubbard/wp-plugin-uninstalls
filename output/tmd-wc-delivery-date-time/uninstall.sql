-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmd_dlvrdt_status', 'tmd_off_days', 'tmd_dlvrdt_to', 'tmd_dlvrdt_from', 'woocommerce_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_delivery_date', '_delivery_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('_delivery_date', '_delivery_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('_delivery_date', '_delivery_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_delivery_date', '_delivery_time');

