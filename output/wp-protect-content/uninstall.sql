-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpc_disallow_copy_content', 'wpc_disallow_f12', 'wpc_disallow_f12_msg', 'wpc_disallow_right_click', 'wpc_right_click_msg', 'wpc_disallow_drag', 'wpc_alert_style', 'wpc_hide_alert', 'wpc_debug_mode');

