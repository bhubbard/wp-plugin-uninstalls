<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spost_admin_from_email');
delete_site_option('spost_admin_from_email');
delete_option('spost_allowed_level');
delete_site_option('spost_allowed_level');
delete_option('spost_require_email');
delete_site_option('spost_require_email');
delete_option('spost_posting_posttype');
delete_site_option('spost_posting_posttype');
delete_option('spost_posting_taxonomy');
delete_site_option('spost_posting_taxonomy');
delete_option('spost_posting_status');
delete_site_option('spost_posting_status');
delete_option('spost_posting_default_user');
delete_site_option('spost_posting_default_user');
delete_option('spost_db_version');
delete_site_option('spost_db_version');
delete_option('spost_db_build');
delete_site_option('spost_db_build');
delete_option('spost_login_button_background');
delete_site_option('spost_login_button_background');
delete_option('spost_login_button_text_color');
delete_site_option('spost_login_button_text_color');
delete_option('spost_register_button_background');
delete_site_option('spost_register_button_background');
delete_option('spost_register_button_text_color');
delete_site_option('spost_register_button_text_color');
delete_option('spost_or_button_background');
delete_site_option('spost_or_button_background');
delete_option('spost_or_button_text_color');
delete_site_option('spost_or_button_text_color');
delete_option('spost_admin_email');
delete_site_option('spost_admin_email');
delete_option('spost_send_poster_email');
delete_site_option('spost_send_poster_email');
delete_option('spost_custom_login_page');
delete_site_option('spost_custom_login_page');
delete_option('spost_interval_between_posts');
delete_site_option('spost_interval_between_posts');
delete_option('spost_log_user_ip');
delete_site_option('spost_log_user_ip');
delete_option('spost_version');
delete_site_option('spost_version');
delete_option('spost_build');
delete_site_option('spost_build');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'poster_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'poster_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'poster_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'poster_name' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'stranger_posting_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'stranger_posting_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'stranger_posting_email' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'stranger_posting_email' ) );

