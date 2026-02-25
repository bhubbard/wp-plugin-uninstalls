<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('urr_activation_redirect');
delete_site_option('urr_activation_redirect');
delete_option('ultimate_reviews_rocket_setting_options');
delete_site_option('ultimate_reviews_rocket_setting_options');
delete_option('ultimate_reviews_rocket_enable_options');
delete_site_option('ultimate_reviews_rocket_enable_options');
delete_option('ultimate_reviews_rocket_social_media_options');
delete_site_option('ultimate_reviews_rocket_social_media_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ultimate_reviews_rocket_options');
delete_site_option('ultimate_reviews_rocket_options');
delete_option('new_admin_email');
delete_site_option('new_admin_email');
delete_option('urr_social_options');
delete_site_option('urr_social_options');

// Delete Transients
delete_transient('urr-admin-notice-activation');
delete_site_transient('urr-admin-notice-activation');

