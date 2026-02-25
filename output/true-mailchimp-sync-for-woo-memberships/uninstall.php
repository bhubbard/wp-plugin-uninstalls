<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_mishmch_api_key');
delete_site_option('_mishmch_api_key');
delete_option('_misha_mailchimp_lists_with_webhooks');
delete_site_option('_misha_mailchimp_lists_with_webhooks');
delete_option('_mishmch_2optin');
delete_site_option('_mishmch_2optin');
delete_option('_misha_mailchimp_scheduled_rules');
delete_site_option('_misha_mailchimp_scheduled_rules');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_nointerests_for_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_resync_in_process');
delete_site_option('_resync_in_process');
delete_option('_misha_mailchimp_resync_users_offset');
delete_site_option('_misha_mailchimp_resync_users_offset');

// Delete Transients
delete_transient('mishmch_lists1');
delete_site_transient('mishmch_lists1');

// Clear Cron Jobs
wp_clear_scheduled_hook('misha_cron_mailchimp_resync_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_misha_mailchimp_plan_statuses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_misha_mailchimp_plan_statuses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_misha_mailchimp_plan_statuses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_misha_mailchimp_plan_statuses' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%approved' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%approved' ) );

