-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jcorgcpb_alert', 'jcorgcpb_alert_message', 'jcorgcpb_use_css', 'jcorgcpb_disable_selection', 'jcorgcpb_disable_right_mouse_click', 'jcorgcpb_disable_keys', 'jcorgcpb_where_on', 'jcorgcpb_linkback', 'jcorgcpb_linkback_text');

