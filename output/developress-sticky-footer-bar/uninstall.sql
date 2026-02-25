-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_stiky_bar', 'background_bar', 'font_color', 'font_size', 'icon_size', 'font_size_other_label', 'translation_close_link', 'translation_menu_link', 'number_items_first_menu', 'visibility', 'custom_css', 'menu_select', 'display_menu_right_left');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_extra');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_extra');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_extra');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_extra');

