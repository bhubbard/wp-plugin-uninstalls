-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('drccp_settings', 'drccp_admin_notice_dismissed', 'drccp_custom_menu_settings');

