-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shift8_push_application_user', 'shift8_push_application_password', 'shift8_push_dst_url', 'shift8_push_src_url', 'shift8_push_enabled');

