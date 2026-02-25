-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wc_sequential_order_numbers_install_offset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_number');

