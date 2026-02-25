<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hjqs_mentions_legales_options');
delete_site_option('hjqs_mentions_legales_options');
delete_option('hjqs_legal_notice');
delete_site_option('hjqs_legal_notice');
delete_option('hjqs_privacy_policy');
delete_site_option('hjqs_privacy_policy');
delete_option('hjqs_terms_of_sales');
delete_site_option('hjqs_terms_of_sales');
delete_option('hjqs_hjqs_legal_notice');
delete_site_option('hjqs_hjqs_legal_notice');
delete_option('hjqs_hjqs_privacy_policy');
delete_site_option('hjqs_hjqs_privacy_policy');
delete_option('hjqs_hjqs_terms_of_sales');
delete_site_option('hjqs_hjqs_terms_of_sales');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'hjqs_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

