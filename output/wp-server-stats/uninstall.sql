-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpss_settings_options', 'wpss_db_advanced_info', 'wpss_donate_notice', 'wpss_server_location', 'wpss_cpu_count', 'wpss_cpu_core_count', 'wpss_server_os', 'wpss_db_software', 'wpss_db_version', 'wpss_db_max_connection', 'wpss_db_max_packet_size', 'wpss_db_disk_usage', 'wpss_db_index_disk_usage', 'wpss_php_max_upload_size', 'wpss_php_max_post_size', 'wpss-donate-notice', 'wpss_total_ram');

