<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpah_config_convert_404_to_200');
delete_site_option('wpah_config_convert_404_to_200');
delete_option('wpah_config_wp_admin_new_url');
delete_site_option('wpah_config_wp_admin_new_url');
delete_option('wpah_config_syslog');
delete_site_option('wpah_config_syslog');
delete_option('wpah_config_apikey');
delete_site_option('wpah_config_apikey');
delete_option('wpah_config_block_brute_force');
delete_site_option('wpah_config_block_brute_force');
delete_option('wpah_config_block_version');
delete_site_option('wpah_config_block_version');
delete_option('wpah_config_block_fingerprint');
delete_site_option('wpah_config_block_fingerprint');
delete_option('wpah_config_block_rpc');
delete_site_option('wpah_config_block_rpc');
delete_option('wpah_config_add_security_header');
delete_site_option('wpah_config_add_security_header');
delete_option('wpah_config_block_directory_listing');
delete_site_option('wpah_config_block_directory_listing');
delete_option('wpah_config_block_proxy');
delete_site_option('wpah_config_block_proxy');
delete_option('wpah_config_block_tor');
delete_site_option('wpah_config_block_tor');
delete_option('wpah_config_block_injection');
delete_site_option('wpah_config_block_injection');
delete_option('wpah_config_block_scanner');
delete_site_option('wpah_config_block_scanner');
delete_option('wpah_config_add_footer');
delete_site_option('wpah_config_add_footer');

