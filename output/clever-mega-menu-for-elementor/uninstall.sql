-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmm4e_menu_post_id', '_elementor_page_settings', 'cmm4e_menu_id', 'cmm4e_menu_item_id', 'cmm4e_menu_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmm4e_menu_post_id', '_elementor_page_settings', 'cmm4e_menu_id', 'cmm4e_menu_item_id', 'cmm4e_menu_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmm4e_menu_post_id', '_elementor_page_settings', 'cmm4e_menu_id', 'cmm4e_menu_item_id', 'cmm4e_menu_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmm4e_menu_post_id', '_elementor_page_settings', 'cmm4e_menu_id', 'cmm4e_menu_item_id', 'cmm4e_menu_meta');

