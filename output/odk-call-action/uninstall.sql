-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_call_action_option_mobile', 'wp_call_action_option_desktop');

