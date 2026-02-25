-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('compibot_activation_redirect', 'compibot_wp_rocket_notice_closed', 'compibot_updated', 'compibot_wp_rocket_warning', 'compibot_activation_error', 'compibot_unread_count', 'compibot_scan_status', 'compibot_update_options_status', 'compibot_updated');

