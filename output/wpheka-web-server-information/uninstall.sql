-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpheka_web_server_db_advanced_info', 'wpheka_web_server_info_version', 'wpheka_web_server_db_software', 'wpheka_web_server_db_version', 'wpheka_web_server_db_max_connection', 'wpheka_web_server_db_max_packet_size', 'wpheka_web_server_db_disk_usage', 'wpheka_web_server_db_index_disk_usage', 'wpheka_web_server_os', 'wpheka_web_server_location');

