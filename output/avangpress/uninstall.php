<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avangpress_flash_messages');
delete_site_option('avangpress_flash_messages');
delete_option('avangpress');
delete_site_option('avangpress');
delete_option('avangpress_mail_list_ids');
delete_site_option('avangpress_mail_list_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'avangpress_mail_list_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('avangpress_default_form_id');
delete_site_option('avangpress_default_form_id');
delete_option('avangpress_form_stylesheets');
delete_site_option('avangpress_form_stylesheets');
delete_option('avangpress_groupings_map');
delete_site_option('avangpress_groupings_map');
delete_option('avangpress_integrations');
delete_site_option('avangpress_integrations');

// Delete Transients
delete_transient('avangpress_api_key_notice_dismissed');
delete_site_transient('avangpress_api_key_notice_dismissed');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('avangpress_list_counts');
delete_site_transient('avangpress_list_counts');

// Clear Cron Jobs
wp_clear_scheduled_hook('avangpress_refresh_mail_lists');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'avangpress_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'avangpress_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'avangpress_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'avangpress_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'text_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'avangpress_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'avangpress_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'avangpress_optin' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'avangpress_optin' ) );

