<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twae_initial_save_version');
delete_site_option('twae_initial_save_version');
delete_option('twae-install-date');
delete_site_option('twae-install-date');
delete_option('twae-alreadyRated');
delete_site_option('twae-alreadyRated');
delete_option('twae-installDate');
delete_site_option('twae-installDate');
delete_option('twae_marketing_dismissed');
delete_site_option('twae_marketing_dismissed');
delete_option('twae_tec_notice_dismissed');
delete_site_option('twae_tec_notice_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_hide_migration_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('twae_hide_migration_notice');
delete_site_option('twae_hide_migration_notice');
delete_option('twae-free-v');
delete_site_option('twae-free-v');
delete_option('twae-type');
delete_site_option('twae-type');
delete_option('cpfm_opt_in_choice_cool-timeline');
delete_site_option('cpfm_opt_in_choice_cool-timeline');
delete_option('twae-v');
delete_site_option('twae-v');
delete_option('twae-migration-status');
delete_site_option('twae-migration-status');

// Clear Cron Jobs
wp_clear_scheduled_hook('twae_extra_data_update');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_elementor_data' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'twae_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'twae_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'twae_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'twae_style_migration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'twae_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'twae_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'twae_exists' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'twae_exists' ) );

