<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_security_master');
delete_site_option('wp_security_master');
delete_option('wp_security_master_key');
delete_site_option('wp_security_master_key');
delete_option('wp_security_master_time');
delete_site_option('wp_security_master_time');
delete_option('wp_security_master_time_value');
delete_site_option('wp_security_master_time_value');
delete_option('wp_security_master_time_unit');
delete_site_option('wp_security_master_time_unit');
delete_option('wp_security_master_activate_state');
delete_site_option('wp_security_master_activate_state');

