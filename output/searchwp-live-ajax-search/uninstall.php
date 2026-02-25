<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');
delete_option('searchwp_forms');
delete_site_option('searchwp_forms');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%forms' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('searchwp_live_search_version');
delete_site_option('searchwp_live_search_version');
delete_option('searchwp_live_search_version_upgraded_from');
delete_site_option('searchwp_live_search_version_upgraded_from');
delete_option('searchwp_live_search_last_update');
delete_site_option('searchwp_live_search_last_update');
delete_option('searchwp_live_search_activation_redirect');
delete_site_option('searchwp_live_search_activation_redirect');
delete_option('searchwp_license');
delete_site_option('searchwp_license');
delete_option('searchwp_live_search_admin_notices');
delete_site_option('searchwp_live_search_admin_notices');

// Delete Transients
delete_transient('searchwp_live_search_activation_redirect');
delete_site_transient('searchwp_live_search_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'searchwp_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'searchwp_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'searchwp_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'searchwp_admin_form_embed_wizard' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'searchwp_live_search_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'searchwp_live_search_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'searchwp_live_search_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'searchwp_live_search_admin_notices' ) );

