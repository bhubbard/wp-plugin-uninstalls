-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%is_enabled';
DELETE FROM wp_options WHERE option_name LIKE '%allowed_ip';
DELETE FROM wp_options WHERE option_name LIKE '%allowed_rest_routes';
DELETE FROM wp_options WHERE option_name LIKE '%allowed_ajax_actions';
DELETE FROM wp_options WHERE option_name LIKE '%block_rest_post';
DELETE FROM wp_options WHERE option_name LIKE '%block_rest_put_patch';
DELETE FROM wp_options WHERE option_name LIKE '%block_rest_delete';
DELETE FROM wp_options WHERE option_name LIKE '%rest_error_message';
DELETE FROM wp_options WHERE option_name LIKE '%rest_status_code';
DELETE FROM wp_options WHERE option_name LIKE '%block_xmlrpc';
DELETE FROM wp_options WHERE option_name LIKE '%xmlrpc_error_message';
DELETE FROM wp_options WHERE option_name LIKE '%xmlrpc_status_code';
DELETE FROM wp_options WHERE option_name LIKE '%ajax_error_message';
DELETE FROM wp_options WHERE option_name LIKE '%ajax_status_code';

