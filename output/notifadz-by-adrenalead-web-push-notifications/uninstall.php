<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adrenalead_notifadz_profil');
delete_site_option('adrenalead_notifadz_profil');
delete_option('adrenalead_notifadz_token');
delete_site_option('adrenalead_notifadz_token');
delete_option('adrenalead_notifadz_need_confirm_template');
delete_site_option('adrenalead_notifadz_need_confirm_template');
delete_option('adrenalead_notifadz_confirm_template_id');
delete_site_option('adrenalead_notifadz_confirm_template_id');
delete_option('adrenalead_notifadz_template_data');
delete_site_option('adrenalead_notifadz_template_data');
delete_option('adrenalead_notifadz_tab');
delete_site_option('adrenalead_notifadz_tab');
delete_option('adrenalead_notifadz_ads');
delete_site_option('adrenalead_notifadz_ads');
delete_option('adrenalead_notifadz_send_push_on_publish');
delete_site_option('adrenalead_notifadz_send_push_on_publish');
delete_option('adrenalead_notifadz_device_targeted_on_publish');
delete_site_option('adrenalead_notifadz_device_targeted_on_publish');
delete_option('adrenalead_notifadz_ids');
delete_site_option('adrenalead_notifadz_ids');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'adrenalead_notifadz_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('adrenalead_notifadz_script');
delete_site_option('adrenalead_notifadz_script');
delete_option('adrenalead_notifadz_script_triggers_activated');
delete_site_option('adrenalead_notifadz_script_triggers_activated');
delete_option('adrenalead_notifadz_script_triggers');
delete_site_option('adrenalead_notifadz_script_triggers');
delete_option('adrenalead_notifadz_worker');
delete_site_option('adrenalead_notifadz_worker');
delete_option('adrenalead_notifadz_account_id');
delete_site_option('adrenalead_notifadz_account_id');
delete_option('adrenalead_notifadz_need_to_copy_ads');
delete_site_option('adrenalead_notifadz_need_to_copy_ads');

// Clear Cron Jobs
wp_clear_scheduled_hook('notifadz_adrenalead_hourly_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notifadz_adrenalead_send_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notifadz_adrenalead_send_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notifadz_adrenalead_send_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notifadz_adrenalead_send_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notifadz_adrenalead_push_device' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notifadz_adrenalead_push_device' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notifadz_adrenalead_push_device' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notifadz_adrenalead_push_device' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'notifadz_adrenalead_sent_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'notifadz_adrenalead_sent_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'notifadz_adrenalead_sent_push' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'notifadz_adrenalead_sent_push' ) );

