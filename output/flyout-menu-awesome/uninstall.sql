-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_flyout_menu_menu_button_style_choice', '_flyout_menu_button_menu_style', '_flyout_menu_custom_menu_label', '_flyout_menu_button_menu_position_screen', '_flyout_menu_btn_icon_pos', 'carbon_custom_sidebars');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

