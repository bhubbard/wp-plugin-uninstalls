-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('free_plugin_activated_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_sale_price', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_sale_price', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_sale_price', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_sale_price', '_regular_price');

