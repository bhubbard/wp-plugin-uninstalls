<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gitium_keypair');
delete_site_option('gitium_keypair');
delete_option('gitium_webhook_key');
delete_site_option('gitium_webhook_key');

// Delete Transients
delete_transient('gitium_versions');
delete_site_transient('gitium_versions');
delete_transient('gitium_remote_tracking_branch');
delete_site_transient('gitium_remote_tracking_branch');
delete_transient('gitium_is_status_working');
delete_site_transient('gitium_is_status_working');
delete_transient('gitium_uncommited_changes');
delete_site_transient('gitium_uncommited_changes');
delete_transient('gitium_git_version');
delete_site_transient('gitium_git_version');
delete_transient('gitium_remote_disconnected');
delete_site_transient('gitium_remote_disconnected');
delete_transient('gitium_menu_bubble');
delete_site_transient('gitium_menu_bubble');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_message_%', '_site_transient_message_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

