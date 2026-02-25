-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('site_logo', 'advanced_login_page_customizer_login_ui_settings', 'advanced_login_page_customizer_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alpc_menu_pointer_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('alpc_menu_pointer_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('alpc_menu_pointer_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alpc_menu_pointer_dismissed');

