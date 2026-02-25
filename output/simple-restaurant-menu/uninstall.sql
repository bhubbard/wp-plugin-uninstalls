-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srm_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('srm_menu_item_id_meta', 'srm_menu_item_order_meta', 'srm_menu_item_price_meta', 'srm_menu_title_meta', 'srm_menu_columns_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('srm_menu_item_id_meta', 'srm_menu_item_order_meta', 'srm_menu_item_price_meta', 'srm_menu_title_meta', 'srm_menu_columns_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('srm_menu_item_id_meta', 'srm_menu_item_order_meta', 'srm_menu_item_price_meta', 'srm_menu_title_meta', 'srm_menu_columns_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('srm_menu_item_id_meta', 'srm_menu_item_order_meta', 'srm_menu_item_price_meta', 'srm_menu_title_meta', 'srm_menu_columns_meta');

