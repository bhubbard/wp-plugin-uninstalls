-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wb_skt_ver', 'wb_skt_baidu_app_error', 'wb_skt_baidu_app_token', 'wb_skt_api_error', 'wb_skt_kws', 'wb_skt_promote', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ver';
DELETE FROM wp_options WHERE option_name LIKE 'wb_skt_cnf_%';

