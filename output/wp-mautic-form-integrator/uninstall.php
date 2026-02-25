<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'fs_contact_form%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('haw_mautic_drop_data');
delete_site_option('haw_mautic_drop_data');
delete_option('haw_mautic_base_url');
delete_site_option('haw_mautic_base_url');
delete_option('haw_mautic_auth_type');
delete_site_option('haw_mautic_auth_type');
delete_option('haw_mautic_public_key');
delete_site_option('haw_mautic_public_key');
delete_option('haw_mautic_secret_key');
delete_site_option('haw_mautic_secret_key');
delete_option('haw_mautic_access_token_data');
delete_site_option('haw_mautic_access_token_data');
delete_option('haw_mautic_integration_do_activation_redirect');
delete_site_option('haw_mautic_integration_do_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );

