-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('foodlist_demo_data_ids', 'foodlist_first_start', 'foodlist_last_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_fl_menu_section_note', '_fl_menu_section_multi_number', '_fl_menu_sections_order', '_fl_menu_item_multi_number', '_fl_menu_items_order', '_fl_price_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_fl_menu_section_note', '_fl_menu_section_multi_number', '_fl_menu_sections_order', '_fl_menu_item_multi_number', '_fl_menu_items_order', '_fl_price_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_fl_menu_section_note', '_fl_menu_section_multi_number', '_fl_menu_sections_order', '_fl_menu_item_multi_number', '_fl_menu_items_order', '_fl_price_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_fl_menu_section_note', '_fl_menu_section_multi_number', '_fl_menu_sections_order', '_fl_menu_item_multi_number', '_fl_menu_items_order', '_fl_price_data');

