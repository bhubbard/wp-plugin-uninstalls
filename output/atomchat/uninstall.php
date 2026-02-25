<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('show_name_in_chat');
delete_site_option('show_name_in_chat');
delete_option('show_docked_layout_on_all_pages');
delete_site_option('show_docked_layout_on_all_pages');
delete_option('atomchat_show_friends');
delete_site_option('atomchat_show_friends');
delete_option('atomchat_bp_group_sync');
delete_site_option('atomchat_bp_group_sync');
delete_option('atomchat_auth_key');
delete_site_option('atomchat_auth_key');
delete_option('atomchat_api_key');
delete_site_option('atomchat_api_key');
delete_option('atomchat_enable_mycred');
delete_site_option('atomchat_enable_mycred');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'atomchat_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('atomchat_clientid');
delete_site_option('atomchat_clientid');
delete_option('atomchatintialaccess');
delete_site_option('atomchatintialaccess');
delete_option('atomchat_license_key');
delete_site_option('atomchat_license_key');
delete_option('inbox_sync');
delete_site_option('inbox_sync');
delete_option('hide_bar');
delete_site_option('hide_bar');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_messageCounter%', '_site_transient_messageCounter%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_timer%', '_site_transient_timer%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('atomchat_buddypress_groups_sync_scheduler');
wp_clear_scheduled_hook('groups_group_create_complete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'first_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_name' ) );

