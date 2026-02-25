<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pcnch_enable_log');
delete_site_option('pcnch_enable_log');
delete_option('pcnch_post_types');
delete_site_option('pcnch_post_types');
delete_option('pcnch_update_types');
delete_site_option('pcnch_update_types');
delete_option('pcnch_display_limit');
delete_site_option('pcnch_display_limit');
delete_option('pcnch_first_visit_display_limit');
delete_site_option('pcnch_first_visit_display_limit');
delete_option('pcnch_first_visit_post_types');
delete_site_option('pcnch_first_visit_post_types');
delete_option('pcnch_localstorage_lifetime');
delete_site_option('pcnch_localstorage_lifetime');
delete_option('pcnch_localstorage_first_visit_lifetime');
delete_site_option('pcnch_localstorage_first_visit_lifetime');
delete_option('pcnch_transient_key_lifetime');
delete_site_option('pcnch_transient_key_lifetime');
delete_option('pcnch_transient_key_first_visit_lifetime');
delete_site_option('pcnch_transient_key_first_visit_lifetime');
delete_option('pcnch_post_icons');
delete_site_option('pcnch_post_icons');
delete_option('pcnch_list_position');
delete_site_option('pcnch_list_position');
delete_option('pcnch_list_width');
delete_site_option('pcnch_list_width');
delete_option('pcnch_read_icon');
delete_site_option('pcnch_read_icon');
delete_option('pcnch_show_logo');
delete_site_option('pcnch_show_logo');
delete_option('pcnch_mark_all_as_read');
delete_site_option('pcnch_mark_all_as_read');
delete_option('pcnch_show_read_items');
delete_site_option('pcnch_show_read_items');
delete_option('pcnch_hide_read_items');
delete_site_option('pcnch_hide_read_items');
delete_option('pcnch_all_read_message');
delete_site_option('pcnch_all_read_message');
delete_option('pcnch_custom_notifications');
delete_site_option('pcnch_custom_notifications');
delete_option('pcnch_cron_frequency');
delete_site_option('pcnch_cron_frequency');
delete_option('pcnch_cron_time');
delete_site_option('pcnch_cron_time');
delete_option('pcnch_show_welcome_message');
delete_site_option('pcnch_show_welcome_message');

// Delete Transients
delete_transient('pcnch_first_visit_notifications');
delete_site_transient('pcnch_first_visit_notifications');
delete_transient('pcnch_daily_notifications');
delete_site_transient('pcnch_daily_notifications');

// Clear Cron Jobs
wp_clear_scheduled_hook('pcnch_refresh_transients');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'main_blog_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'main_blog_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'main_blog_tag' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'main_blog_tag' ) );

