<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('json_api_base');
delete_site_option('json_api_base');
delete_option('badgeos_obi_issuer_public_evidence');
delete_site_option('badgeos_obi_issuer_public_evidence');
delete_option('badgeos_obi_issuer_org_name');
delete_site_option('badgeos_obi_issuer_org_name');
delete_option('badgeos_obi_issuer_org_url');
delete_site_option('badgeos_obi_issuer_org_url');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'badgeos_obi_issuer_org_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('json_api_controllers');
delete_site_option('json_api_controllers');
delete_option('badgeos_obi_issuer_alt_email');
delete_site_option('badgeos_obi_issuer_alt_email');
delete_option('badgeos_obi_issuer_org_description');
delete_site_option('badgeos_obi_issuer_org_description');
delete_option('badgeos_obi_issuer_org_image');
delete_site_option('badgeos_obi_issuer_org_image');
delete_option('badgeos_obi_issuer_org_email');
delete_site_option('badgeos_obi_issuer_org_email');
delete_option('badgeos_obi_issuer_org_revocationList');
delete_site_option('badgeos_obi_issuer_org_revocationList');
delete_option('badgeos_obi_issuer_css_bypass');
delete_site_option('badgeos_obi_issuer_css_bypass');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_badgeos_submission_achievement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_badgeos_submission_achievement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_badgeos_submission_achievement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_badgeos_submission_achievement_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_badgeos_backpack_pushed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_badgeos_backpack_pushed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_badgeos_backpack_pushed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_badgeos_backpack_pushed' ) );

