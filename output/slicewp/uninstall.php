<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slicewp_remote_add_ons');
delete_site_option('slicewp_remote_add_ons');
delete_option('slicewp_helpscout_beacon_welcome');
delete_site_option('slicewp_helpscout_beacon_welcome');
delete_option('slicewp_website_registered');
delete_site_option('slicewp_website_registered');
delete_option('slicewp_setup_wizard_visited');
delete_site_option('slicewp_setup_wizard_visited');
delete_option('slicewp_dismissed_admin_notices');
delete_site_option('slicewp_dismissed_admin_notices');
delete_option('slicewp_review_request');
delete_site_option('slicewp_review_request');
delete_option('slicewp_flush_rewrite_rules');
delete_site_option('slicewp_flush_rewrite_rules');
delete_option('slicewp_license_key');
delete_site_option('slicewp_license_key');
delete_option('slicewp_setup_wizard_hidden');
delete_site_option('slicewp_setup_wizard_hidden');
delete_option('slicewp_setup_wizard_current_step');
delete_site_option('slicewp_setup_wizard_current_step');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('slicewp_license_key_data');
delete_site_option('slicewp_license_key_data');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'slicewp_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('slicewp_first_activation');
delete_site_option('slicewp_first_activation');
delete_option('slicewp_migrations');
delete_site_option('slicewp_migrations');
delete_option('slicewp_version');
delete_site_option('slicewp_version');
delete_option('slicewp_settings');
delete_site_option('slicewp_settings');

// Delete Transients
delete_transient('_slicewp_activated');
delete_site_transient('_slicewp_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('slicewp_plugin_usage_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slicewp_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slicewp_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slicewp_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slicewp_user_preferences' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edd_sl_is_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edd_sl_is_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edd_sl_is_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edd_sl_is_renewal' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slicewp_disable_commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slicewp_disable_commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slicewp_disable_commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slicewp_disable_commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'slicewp-disable-commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'slicewp-disable-commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'slicewp-disable-commissions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'slicewp-disable-commissions' ) );

