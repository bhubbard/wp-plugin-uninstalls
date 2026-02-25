<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('searchwp_modal_form_version');
delete_site_option('searchwp_modal_form_version');
delete_option('searchwp_modal_form_version_upgraded_from');
delete_site_option('searchwp_modal_form_version_upgraded_from');
delete_option('searchwp_modal_form_last_update');
delete_site_option('searchwp_modal_form_last_update');
delete_option('searchwp_modal_form_activation_redirect');
delete_site_option('searchwp_modal_form_activation_redirect');
delete_option('searchwp_modal_form_admin_notices');
delete_site_option('searchwp_modal_form_admin_notices');

// Delete Transients
delete_transient('searchwp_modal_form_activation_redirect');
delete_site_transient('searchwp_modal_form_activation_redirect');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_swp_modal_forms_use_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_swp_modal_forms_use_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_swp_modal_forms_use_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_swp_modal_forms_use_icon' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'searchwp_modal_form_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'searchwp_modal_form_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'searchwp_modal_form_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'searchwp_modal_form_admin_notices' ) );

