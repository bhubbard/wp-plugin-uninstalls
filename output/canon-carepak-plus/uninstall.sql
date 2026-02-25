-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jal_db_version', 'woocommerce_currency', 'sortsearchtitle_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sync', '_warranty', '_booking_start');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sync', '_warranty', '_booking_start');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sync', '_warranty', '_booking_start');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sync', '_warranty', '_booking_start');

