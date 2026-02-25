-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('meveto_pusher_key', 'meveto_pusher_cluster', 'meveto_oauth_client_id', 'meveto_oauth_client_secret', 'meveto_allow_passwords', 'meveto_pusher_app_id', 'meveto_pusher_secret', 'meveto_connect_page', 'meveto_login_with_meveto_page', 'meveto_oauth_scope', 'meveto_oauth_authorize_url');
DELETE FROM wp_options WHERE option_name LIKE '%oauth_client_id';
DELETE FROM wp_options WHERE option_name LIKE '%oauth_client_secret';
DELETE FROM wp_options WHERE option_name LIKE '%allow_passwords';
DELETE FROM wp_options WHERE option_name LIKE '%pusher_app_id';
DELETE FROM wp_options WHERE option_name LIKE '%pusher_key';
DELETE FROM wp_options WHERE option_name LIKE '%pusher_secret';
DELETE FROM wp_options WHERE option_name LIKE '%pusher_cluster';

