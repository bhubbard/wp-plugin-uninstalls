<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('r_notice_data');
delete_site_option('r_notice_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-transients' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ReduxFrameworkPlugin');
delete_site_option('ReduxFrameworkPlugin');
delete_option('redux-framework-tracking');
delete_site_option('redux-framework-tracking');
delete_option('redux_version_upgraded_from');
delete_site_option('redux_version_upgraded_from');
delete_option('redux_support_hash');
delete_site_option('redux_support_hash');
delete_option('mailchimp_api_status');
delete_site_option('mailchimp_api_status');
delete_option('aweber_api_status');
delete_site_option('aweber_api_status');
delete_option('aweber_consumer_key');
delete_site_option('aweber_consumer_key');
delete_option('aweber_consumer_secret');
delete_site_option('aweber_consumer_secret');
delete_option('aweber_access_token');
delete_site_option('aweber_access_token');
delete_option('aweber_access_secret');
delete_site_option('aweber_access_secret');
delete_option('campaignmonitor_api_status');
delete_site_option('campaignmonitor_api_status');
delete_option('getresponse_api_status');
delete_site_option('getresponse_api_status');
delete_option('convertkit_api_status');
delete_site_option('convertkit_api_status');
delete_option('custom_html_form_action');
delete_site_option('custom_html_form_action');
delete_option('custom_html_hidden_inputs');
delete_site_option('custom_html_hidden_inputs');
delete_option('custom_html_name_input');
delete_site_option('custom_html_name_input');
delete_option('custom_html_email_input');
delete_site_option('custom_html_email_input');
delete_option('custom_html_normal_inputs');
delete_site_option('custom_html_normal_inputs');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%-transient', '_site_transient_%-transient' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('redux-extensions-fetch');
delete_site_transient('redux-extensions-fetch');
delete_transient('_redux_activation_redirect');
delete_site_transient('_redux_activation_redirect');
delete_transient('redux_contributors');
delete_site_transient('redux_contributors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ignore_hints' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'ignore_%' ) );

