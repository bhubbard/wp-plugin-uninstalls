-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clwp_api_pass_test', 'clwp_api_username', 'clwp_api_password', 'cl_msg_error', 'cl_msg_success');

