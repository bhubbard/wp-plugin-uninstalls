<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autocontent_activation_status');
delete_site_option('autocontent_activation_status');
delete_option('autocontent_activation_key');
delete_site_option('autocontent_activation_key');
delete_option('autocontent_credits');
delete_site_option('autocontent_credits');
delete_option('autocontent_frequency');
delete_site_option('autocontent_frequency');
delete_option('autocontent_setup_completed');
delete_site_option('autocontent_setup_completed');
delete_option('autocontent_redirect_to_setup');
delete_site_option('autocontent_redirect_to_setup');
delete_option('autocontent_featured_image');
delete_site_option('autocontent_featured_image');
delete_option('autocontent_subject');
delete_site_option('autocontent_subject');
delete_option('autocontent_tone');
delete_site_option('autocontent_tone');
delete_option('autocontent_post_image');
delete_site_option('autocontent_post_image');
delete_option('autocontent_image_style');
delete_site_option('autocontent_image_style');
delete_option('autocontent_backlink');
delete_site_option('autocontent_backlink');
delete_option('autocontent_affiliate_link');
delete_site_option('autocontent_affiliate_link');
delete_option('autocontent_affliate_link');
delete_site_option('autocontent_affliate_link');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'autocontent_keyword_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('autocontent_keyword_1');
delete_site_option('autocontent_keyword_1');
delete_option('autocontent_keyword_2');
delete_site_option('autocontent_keyword_2');
delete_option('autocontent_keyword_3');
delete_site_option('autocontent_keyword_3');
delete_option('autocontent_keyword_4');
delete_site_option('autocontent_keyword_4');
delete_option('autocontent_keyword_5');
delete_site_option('autocontent_keyword_5');
delete_option('autocontent_keywords');
delete_site_option('autocontent_keywords');
delete_option('autocontent_image_type');
delete_site_option('autocontent_image_type');

// Clear Cron Jobs
wp_clear_scheduled_hook('autocontent_monthly_hook');
wp_clear_scheduled_hook('autocontent_event_hook');

