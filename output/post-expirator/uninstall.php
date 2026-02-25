<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('expirationdateDebug');
delete_site_option('expirationdateDebug');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('postexpiratorVersion');
delete_site_option('postexpiratorVersion');
delete_option('expirationdateDefaultDate');
delete_site_option('expirationdateDefaultDate');
delete_option('expirationdateExpiredPageStatus');
delete_site_option('expirationdateExpiredPageStatus');
delete_option('expirationdateExpiredPostStatus');
delete_site_option('expirationdateExpiredPostStatus');
delete_option('expirationdateDefaultsPage');
delete_site_option('expirationdateDefaultsPage');
delete_option('expirationdateDefaultsPost');
delete_site_option('expirationdateDefaultsPost');
delete_option('expirationdateCronSchedule');
delete_site_option('expirationdateCronSchedule');
delete_option('expirationdateAutoEnabled');
delete_site_option('expirationdateAutoEnabled');
delete_option('pp_future_V30001RestorePostMeta');
delete_site_option('pp_future_V30001RestorePostMeta');
delete_option('pp_future_V30104ArgsColumnLength');
delete_site_option('pp_future_V30104ArgsColumnLength');
delete_option('expirationdatePreserveData');
delete_site_option('expirationdatePreserveData');

// Delete Transients
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_post-expirator-notice-%', '_site_transient_post-expirator-notice-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pp_future_version_notices_version_error');
delete_site_transient('pp_future_version_notices_version_error');

// Clear Cron Jobs
wp_clear_scheduled_hook('expirationdate_delete');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'expiration_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'expiration_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'expiration_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'expiration_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'publishpressfuture_actions_log_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'publishpressfuture_actions_log_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'publishpressfuture_actions_log_format' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'publishpressfuture_actions_log_format' ) );

