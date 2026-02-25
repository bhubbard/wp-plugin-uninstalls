<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('email_options');
delete_site_option('email_options');
delete_option('email_fields');
delete_site_option('email_fields');
delete_option('email_contenttype');
delete_site_option('email_contenttype');
delete_option('email_snippet');
delete_site_option('email_snippet');
delete_option('email_interval');
delete_site_option('email_interval');
delete_option('email_multiple');
delete_site_option('email_multiple');
delete_option('email_imageverify');
delete_site_option('email_imageverify');
delete_option('email_template_title');
delete_site_option('email_template_title');
delete_option('email_template_subtitle');
delete_site_option('email_template_subtitle');
delete_option('email_template_subject');
delete_site_option('email_template_subject');
delete_option('email_template_body');
delete_site_option('email_template_body');
delete_option('email_template_bodyalt');
delete_site_option('email_template_bodyalt');
delete_option('email_template_sentsuccess');
delete_site_option('email_template_sentsuccess');
delete_option('email_template_sentfailed');
delete_site_option('email_template_sentfailed');
delete_option('email_template_error');
delete_site_option('email_template_error');
delete_option('stats_display');
delete_site_option('stats_display');
delete_option('stats_mostlimit');
delete_site_option('stats_mostlimit');
delete_option('email_smtp');
delete_site_option('email_smtp');
delete_option('email_mailer');
delete_site_option('email_mailer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-email-remark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-email-remark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-email-remark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-email-remark' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp-email-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp-email-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp-email-title' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp-email-title' ) );

