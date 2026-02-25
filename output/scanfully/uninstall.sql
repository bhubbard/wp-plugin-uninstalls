-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scanfully_connect_state');
DELETE FROM wp_options WHERE option_name LIKE '%is_connected';
DELETE FROM wp_options WHERE option_name LIKE '%site_id';
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%expires';
DELETE FROM wp_options WHERE option_name LIKE '%last_used';
DELETE FROM wp_options WHERE option_name LIKE '%date_connected';

