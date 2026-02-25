-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('accumulus_settings', 'accumulus_webhook_endpoint_enabled', 'accumulus_webhook_auth_user', 'accumulus_webhook_auth_password', 'accumulus_active_customer_role', 'accumulus_client_id', 'accumulus_client_secret', 'accumulus_testclient_id', 'accumulus_testclient_secret', 'accumulus_itestclient_id', 'accumulus_itestclient_secret', 'accumulus_token', 'accumulus_testtoken', 'accumulus_itesttoken');
DELETE FROM wp_options WHERE option_name LIKE '%token';
DELETE FROM wp_options WHERE option_name LIKE '%client_id';
DELETE FROM wp_options WHERE option_name LIKE '%client_secret';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('accumulus_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('accumulus_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('accumulus_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('accumulus_id');

