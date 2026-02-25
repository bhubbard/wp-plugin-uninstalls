<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_happyforms_widget');
delete_site_option('widget_happyforms_widget');
delete_option('widget_block');
delete_site_option('widget_block');
delete_option('happyforms-validation-messages');
delete_site_option('happyforms-validation-messages');
delete_option('happyforms_modal_dismissed_onboarding');
delete_site_option('happyforms_modal_dismissed_onboarding');
delete_option('happyforms_show_powered_by');
delete_site_option('happyforms_show_powered_by');
delete_option('_happyforms_received_submissions');
delete_site_option('_happyforms_received_submissions');
delete_option('happyforms-tracking');
delete_site_option('happyforms-tracking');
delete_option('ttf_updates_key_happyforms');
delete_site_option('ttf_updates_key_happyforms');
delete_option('happyforms-data-version');
delete_site_option('happyforms-data-version');
delete_option('_happyforms_cleanup_on_deactivate');
delete_site_option('_happyforms_cleanup_on_deactivate');

// Delete Transients
delete_transient('happyforms_review_notice_recommend');
delete_site_transient('happyforms_review_notice_recommend');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_happyforms_admin_notices_%', '_site_transient_happyforms_admin_notices_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'happyforms-dismissed-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'happyforms-dismissed-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'happyforms-dismissed-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'happyforms-dismissed-notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_happyforms_parts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_happyforms_parts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_happyforms_parts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_happyforms_parts' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'syntax_highlighting' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'happyforms-settings-sections-states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'happyforms-settings-sections-states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'happyforms-settings-sections-states' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'happyforms-settings-sections-states' ) );

