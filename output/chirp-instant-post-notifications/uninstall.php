<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'chirpipn_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('chirpipn_remove_unsubscribed_user');
delete_site_option('chirpipn_remove_unsubscribed_user');
delete_option('chirpipn_email_subject');
delete_site_option('chirpipn_email_subject');
delete_option('chirpipn_email_template');
delete_site_option('chirpipn_email_template');
delete_option('chirpipn_email_footer');
delete_site_option('chirpipn_email_footer');
delete_option('chirpipn_name_label');
delete_site_option('chirpipn_name_label');
delete_option('chirpipn_name_placeholder');
delete_site_option('chirpipn_name_placeholder');
delete_option('chirpipn_email_placeholder');
delete_site_option('chirpipn_email_placeholder');
delete_option('chirpipn_submit_button_text');
delete_site_option('chirpipn_submit_button_text');
delete_option('chirpipn_email_label');
delete_site_option('chirpipn_email_label');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'chirpipn_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'chirpipn_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'chirpipn_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'chirpipn_subscribed' ) );

