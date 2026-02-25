<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llmscbt_tracking_enabled');
delete_site_option('llmscbt_tracking_enabled');
delete_option('llmscbt_domain');
delete_site_option('llmscbt_domain');
delete_option('llmscbt_llms_txt_enabled');
delete_site_option('llmscbt_llms_txt_enabled');
delete_option('llmscbt_llms_txt_content');
delete_site_option('llmscbt_llms_txt_content');
delete_option('llmscbt_consent_given');
delete_site_option('llmscbt_consent_given');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'llmscbt_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

