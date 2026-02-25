-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('admin-theme-login-logo', 'admin-theme-primary-color', 'admin-theme-small-logo', 'admin-theme-custom-hover', 'admin-theme-rounded-corners', 'admin-theme-dashboard_plugins', 'admin-theme-dashboard_recent_comments', 'admin-theme-dashboard_primary', 'admin-theme-dashboard_incoming_links', 'admin-theme-dashboard_right_now', 'admin-theme-dashboard_secondary', 'admin-theme-dashboard_recent_drafts', 'admin-theme-dashboard_quick_press', 'admin-theme-wp_welcome_panel');

