-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('swift_control_widget_settings', 'swift_control_active_widgets', 'swift_control_color_settings', 'swift_control_display_settings', 'swift_control_misc_settings', 'swift_control_admin_bar_settings', 'swift_control_compat_migrate_options', 'admin_bar_settings_backwards_compat', 'swift_control_discontinue_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('swift_control_position');
DELETE FROM wp_usermeta WHERE meta_key IN ('swift_control_position');
DELETE FROM wp_termmeta WHERE meta_key IN ('swift_control_position');
DELETE FROM wp_commentmeta WHERE meta_key IN ('swift_control_position');

