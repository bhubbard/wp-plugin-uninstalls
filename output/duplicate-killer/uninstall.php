<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CF7_page');
delete_site_option('CF7_page');
delete_option('Forminator_page');
delete_site_option('Forminator_page');
delete_option('WPForms_page');
delete_site_option('WPForms_page');
delete_option('Breakdance_page');
delete_site_option('Breakdance_page');
delete_option('Elementor_page');
delete_site_option('Elementor_page');
delete_option('Formidable_page');
delete_site_option('Formidable_page');
delete_option('NinjaForms_page');
delete_site_option('NinjaForms_page');
delete_option('DuplicateKillerSettings');
delete_site_option('DuplicateKillerSettings');
delete_option('duplicateKiller_duplicates_blocked_count');
delete_site_option('duplicateKiller_duplicates_blocked_count');
delete_option('duplicateKiller_review_milestones_dismissed');
delete_site_option('duplicateKiller_review_milestones_dismissed');
delete_option('forminator_page');
delete_site_option('forminator_page');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_breakdance_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_breakdance_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_breakdance_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_breakdance_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );

