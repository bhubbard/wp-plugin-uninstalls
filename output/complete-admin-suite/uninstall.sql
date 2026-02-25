-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('caswp_modules', 'caswp_admin_bar_customizer_options', 'caswp_footer_customizer_options', 'caswp_heartbeat_customizer_options', 'caswp_login_logo_customizer_options', 'caswp_user_activity_columns_options', 'caswp_gutenberg_disabler_options', 'caswp_login_url_customizer_options', 'caswp_maintenance_mode_options', 'caswp_admin_logo_customizer_options', 'caswp_login_method_customizer_options', 'caswp_notification_customizer_options', 'caswp_body_class_customizer_options');

