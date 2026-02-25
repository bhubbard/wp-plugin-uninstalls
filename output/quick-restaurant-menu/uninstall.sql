-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_erm_menu_items', '_erm_type', '_erm_visible', '_erm_prices', '_erm_footer_menu');
DELETE FROM wp_usermeta WHERE meta_key IN ('_erm_menu_items', '_erm_type', '_erm_visible', '_erm_prices', '_erm_footer_menu');
DELETE FROM wp_termmeta WHERE meta_key IN ('_erm_menu_items', '_erm_type', '_erm_visible', '_erm_prices', '_erm_footer_menu');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_erm_menu_items', '_erm_type', '_erm_visible', '_erm_prices', '_erm_footer_menu');

