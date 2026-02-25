<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SMCONNECTOR_OPTIONS');
delete_site_option('SMCONNECTOR_OPTIONS');

// Drop Custom Tables
global $wpdb;
$wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}smconnector_session_keys");
$wpdb->query("DROP TABLE IF EXISTS {$wpdb->prefix}smconnector_failed_login");
