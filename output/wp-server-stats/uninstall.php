<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpss_settings_options');
delete_site_option('wpss_settings_options');
delete_option('wpss_db_advanced_info');
delete_site_option('wpss_db_advanced_info');
delete_option('wpss_donate_notice');
delete_site_option('wpss_donate_notice');

// Delete Transients
delete_transient('wpss_server_location');
delete_site_transient('wpss_server_location');
delete_transient('wpss_cpu_count');
delete_site_transient('wpss_cpu_count');
delete_transient('wpss_cpu_core_count');
delete_site_transient('wpss_cpu_core_count');
delete_transient('wpss_server_os');
delete_site_transient('wpss_server_os');
delete_transient('wpss_db_software');
delete_site_transient('wpss_db_software');
delete_transient('wpss_db_version');
delete_site_transient('wpss_db_version');
delete_transient('wpss_db_max_connection');
delete_site_transient('wpss_db_max_connection');
delete_transient('wpss_db_max_packet_size');
delete_site_transient('wpss_db_max_packet_size');
delete_transient('wpss_db_disk_usage');
delete_site_transient('wpss_db_disk_usage');
delete_transient('wpss_db_index_disk_usage');
delete_site_transient('wpss_db_index_disk_usage');
delete_transient('wpss_php_max_upload_size');
delete_site_transient('wpss_php_max_upload_size');
delete_transient('wpss_php_max_post_size');
delete_site_transient('wpss_php_max_post_size');
delete_transient('wpss-donate-notice');
delete_site_transient('wpss-donate-notice');
delete_transient('wpss_total_ram');
delete_site_transient('wpss_total_ram');

