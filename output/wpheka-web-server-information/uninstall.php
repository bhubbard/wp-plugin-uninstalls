<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpheka_web_server_db_advanced_info');
delete_site_option('wpheka_web_server_db_advanced_info');
delete_option('wpheka_web_server_info_version');
delete_site_option('wpheka_web_server_info_version');

// Delete Transients
delete_transient('wpheka_web_server_db_software');
delete_site_transient('wpheka_web_server_db_software');
delete_transient('wpheka_web_server_db_version');
delete_site_transient('wpheka_web_server_db_version');
delete_transient('wpheka_web_server_db_max_connection');
delete_site_transient('wpheka_web_server_db_max_connection');
delete_transient('wpheka_web_server_db_max_packet_size');
delete_site_transient('wpheka_web_server_db_max_packet_size');
delete_transient('wpheka_web_server_db_disk_usage');
delete_site_transient('wpheka_web_server_db_disk_usage');
delete_transient('wpheka_web_server_db_index_disk_usage');
delete_site_transient('wpheka_web_server_db_index_disk_usage');
delete_transient('wpheka_web_server_os');
delete_site_transient('wpheka_web_server_os');
delete_transient('wpheka_web_server_location');
delete_site_transient('wpheka_web_server_location');

