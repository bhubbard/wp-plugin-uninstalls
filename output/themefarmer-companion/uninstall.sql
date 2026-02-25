-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_hide_out_of_stock_items', 'storez_media_upload_ids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('themefarmer_menu_icon', 'themefarmer_menu_image', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('themefarmer_menu_icon', 'themefarmer_menu_image', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('themefarmer_menu_icon', 'themefarmer_menu_image', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('themefarmer_menu_icon', 'themefarmer_menu_image', '_wp_page_template');

