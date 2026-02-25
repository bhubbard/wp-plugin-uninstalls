<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zeno_report_post-show_ip_to_client');
delete_site_option('zeno_report_post-show_ip_to_client');
delete_option('zeno_report_post-show_on_blog');
delete_site_option('zeno_report_post-show_on_blog');
delete_option('zeno_report_post-add_what');
delete_site_option('zeno_report_post-add_what');
delete_option('zeno_report_post-msg_min_length');
delete_site_option('zeno_report_post-msg_min_length');
delete_option('zeno_report_post-require_login');
delete_site_option('zeno_report_post-require_login');
delete_option('zeno_report_post-spamfilter');
delete_site_option('zeno_report_post-spamfilter');
delete_option('zeno_report_post-subscribed_notification');
delete_site_option('zeno_report_post-subscribed_notification');
delete_option('zeno_report_post-email_notification');
delete_site_option('zeno_report_post-email_notification');
delete_option('zeno_report_post-email_address');
delete_site_option('zeno_report_post-email_address');
delete_option('zeno_report_post-email_subject');
delete_site_option('zeno_report_post-email_subject');
delete_option('zeno_report_post-email_body');
delete_site_option('zeno_report_post-email_body');
delete_option('zeno_report_post-post_types');
delete_site_option('zeno_report_post-post_types');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_zeno_report_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_zeno_report_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_zeno_report_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_zeno_report_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_zeno_report_post_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_zeno_report_post_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_zeno_report_post_moderated' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_zeno_report_post_moderated' ) );

