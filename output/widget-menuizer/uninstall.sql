-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'widget_menuizer_dropdown_settings_show_on_hover', 'cshp_wm_widget_areas');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_menu_item_stack_direction');
DELETE FROM wp_usermeta WHERE meta_key IN ('_menu_item_stack_direction');
DELETE FROM wp_termmeta WHERE meta_key IN ('_menu_item_stack_direction');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_menu_item_stack_direction');

