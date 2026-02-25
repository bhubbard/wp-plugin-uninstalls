<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_aiss_version');
delete_site_option('ayudawp_aiss_version');
delete_option('ayudawp_aiss_options');
delete_site_option('ayudawp_aiss_options');
delete_option('ayudawp_aiss_db_version');
delete_site_option('ayudawp_aiss_db_version');
delete_option('ayudawp_aiss_activation_notice_dismissed');
delete_site_option('ayudawp_aiss_activation_notice_dismissed');
delete_option('ayudawp_aiss_vigia_tip_dismissed');
delete_site_option('ayudawp_aiss_vigia_tip_dismissed');

// Delete Transients
delete_transient('ayudawp_aiss_just_activated');
delete_site_transient('ayudawp_aiss_just_activated');

// Clear Cron Jobs
wp_clear_scheduled_hook('ayudawp_aiss_daily_purge');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_aioseo_noindex' ) );

