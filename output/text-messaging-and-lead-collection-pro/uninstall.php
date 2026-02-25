<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmlcp_livecomm_bearer_token');
delete_site_option('tmlcp_livecomm_bearer_token');
delete_option('tmlcp_livecomm_secret_detail');
delete_site_option('tmlcp_livecomm_secret_detail');
delete_option('tmlcp_livecomm_user_detail');
delete_site_option('tmlcp_livecomm_user_detail');
delete_option('tmlcp_contact_forms');
delete_site_option('tmlcp_contact_forms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'tmlcp_form_mapping_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('livecomm_default_phone_number');
delete_site_option('livecomm_default_phone_number');
delete_option('livecomm_default_contact_list');
delete_site_option('livecomm_default_contact_list');
delete_option('tmlcp_enable_plugin');
delete_site_option('tmlcp_enable_plugin');
delete_option('tmlcp_enable_floating_plugin');
delete_site_option('tmlcp_enable_floating_plugin');

