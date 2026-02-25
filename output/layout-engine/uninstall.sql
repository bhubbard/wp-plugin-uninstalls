-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('le_layout_settings', 'le_layout_settings_backup', 'layout_manager_sidebars', 'layout_engine_layout_settings', 'layout_manager_theme_options');

