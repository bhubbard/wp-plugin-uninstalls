<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sacassettings_options');
delete_site_option('sacassettings_options');
delete_option('sacastitles_options');
delete_site_option('sacastitles_options');
delete_option('seonte-ai-content_options');
delete_site_option('seonte-ai-content_options');
delete_option('wswemail_subjects_options');
delete_site_option('wswemail_subjects_options');
delete_option('wsw_options');
delete_site_option('wsw_options');
delete_option('last_posted_date');
delete_site_option('last_posted_date');
delete_option('daily_post_count');
delete_site_option('daily_post_count');
delete_option('last_posted_date_for_retro');
delete_site_option('last_posted_date_for_retro');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('facebook_page_access_token');
delete_site_option('facebook_page_access_token');
delete_option('facebook_page_id');
delete_site_option('facebook_page_id');

// Delete Transients
delete_transient('sacas_we_working');
delete_site_transient('sacas_we_working');

// Clear Cron Jobs
wp_clear_scheduled_hook('my_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

