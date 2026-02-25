<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('erbwp_rating_label');
delete_site_option('erbwp_rating_label');
delete_option('erbwp_submit_label');
delete_site_option('erbwp_submit_label');
delete_option('erbwp_header_success_message');
delete_site_option('erbwp_header_success_message');
delete_option('erbwp_success_label');
delete_site_option('erbwp_success_label');
delete_option('erbwp_header_fail_label');
delete_site_option('erbwp_header_fail_label');
delete_option('erbwp_fail_label');
delete_site_option('erbwp_fail_label');
delete_option('erbwp_modal_header_background_color');
delete_site_option('erbwp_modal_header_background_color');
delete_option('erbwp_modal_header_color');
delete_site_option('erbwp_modal_header_color');
delete_option('erbwp_enabled_for');
delete_site_option('erbwp_enabled_for');
delete_option('erbwp_remind_rating');
delete_site_option('erbwp_remind_rating');
delete_option('erbwp_header_remind_rating_label');
delete_site_option('erbwp_header_remind_rating_label');
delete_option('erbwp_remind_rating_message_label');
delete_site_option('erbwp_remind_rating_message_label');
delete_option('erbwp_send_email_notify_to_admin_when_new_rating');
delete_site_option('erbwp_send_email_notify_to_admin_when_new_rating');
delete_option('erbwp_send_email_notify_to_author_when_new_rating');
delete_site_option('erbwp_send_email_notify_to_author_when_new_rating');
delete_option('erbwp_ratings_per_page');
delete_site_option('erbwp_ratings_per_page');
delete_option('erbwp_sort_ratings_direction');
delete_site_option('erbwp_sort_ratings_direction');
delete_option('erbwp_hold_for_review_comment_with_x_links');
delete_site_option('erbwp_hold_for_review_comment_with_x_links');
delete_option('erbwp_hold_for_review_comment_with_x_links_message');
delete_site_option('erbwp_hold_for_review_comment_with_x_links_message');
delete_option('erbwp_avatar_url_default');
delete_site_option('erbwp_avatar_url_default');
delete_option('erbwp_blacklist_keyword');
delete_site_option('erbwp_blacklist_keyword');
delete_option('erbwp_hold_for_review_comment_with_blacklist_keyword_message');
delete_site_option('erbwp_hold_for_review_comment_with_blacklist_keyword_message');
delete_option('erbwp_header_success_label');
delete_site_option('erbwp_header_success_label');
delete_option('erbwp_success_message');
delete_site_option('erbwp_success_message');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');

// Clear Cron Jobs
wp_clear_scheduled_hook('erbwp_send_scheduled_email_action');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'average_rating' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'average_rating' ) );

