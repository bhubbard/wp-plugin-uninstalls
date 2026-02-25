<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simco_account_info');
delete_site_option('simco_account_info');
delete_option('simco_integration_token');
delete_site_option('simco_integration_token');
delete_option('simco_project_id');
delete_site_option('simco_project_id');
delete_option('simco_domain_id');
delete_site_option('simco_domain_id');
delete_option('simco_settings');
delete_site_option('simco_settings');
delete_option('simco_enabled_roles');
delete_site_option('simco_enabled_roles');
delete_option('simco_auto_sync_clients');
delete_site_option('simco_auto_sync_clients');
delete_option('simco_admin_roles');
delete_site_option('simco_admin_roles');
delete_option('simco_last_seen_todo_count');
delete_site_option('simco_last_seen_todo_count');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_simco_synced_user_%', '_site_transient_simco_synced_user_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('simco_new_comments_count');
delete_site_transient('simco_new_comments_count');
delete_transient('simco_account_cache');
delete_site_transient('simco_account_cache');
delete_transient('simco_domains_cache');
delete_site_transient('simco_domains_cache');

