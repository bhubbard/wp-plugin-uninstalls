<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ectbe-install-date');
delete_site_option('ectbe-install-date');
delete_option('ectbe_initial_save_version');
delete_site_option('ectbe_initial_save_version');
delete_option('ectbe-installDate');
delete_site_option('ectbe-installDate');
delete_option('ectbe-ratingDiv');
delete_site_option('ectbe-ratingDiv');
delete_option('cpfm_opt_in_choice_cool_events');
delete_site_option('cpfm_opt_in_choice_cool_events');
delete_option('ectbe-v');
delete_site_option('ectbe-v');
delete_option('ectbe-type');
delete_site_option('ectbe-type');
delete_option('ectbe-migration-status');
delete_site_option('ectbe-migration-status');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('ectbe_extra_data_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ectbe_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ectbe_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ectbe_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ectbe_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ectbe_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ectbe_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ectbe_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ectbe_style_migration' ) );

