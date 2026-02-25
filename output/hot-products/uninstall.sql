-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable_hotproducts', 'hotproducts_text', 'show_flame', 'text_background_colour', 'text_colour', 'enable_hotproducts_archive', 'hotproducts_text_archive');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hotproductscount');
DELETE FROM wp_usermeta WHERE meta_key IN ('hotproductscount');
DELETE FROM wp_termmeta WHERE meta_key IN ('hotproductscount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hotproductscount');

