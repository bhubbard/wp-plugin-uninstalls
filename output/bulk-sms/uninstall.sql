-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bulksms_admin_mobile', 'bulksms_gateway_domain', 'bulksms_username', 'bulksms_password', 'bulksms_sender', 'bulksms_send_visitor_msg', 'bulksms_visitor_message', 'bulksms_send_visitor_message');

