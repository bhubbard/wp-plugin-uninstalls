<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('synved_social_settings');
delete_site_option('synved_social_settings');
delete_option('smf-hide-review');
delete_site_option('smf-hide-review');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'synved_connect_id_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('synved_connect_install_date');
delete_site_option('synved_connect_install_date');
delete_option('synved_version');
delete_site_option('synved_version');
delete_option('synved_option_wp_upgrade_addon_transfer');
delete_site_option('synved_option_wp_upgrade_addon_transfer');
delete_option('synved_option_wp_upgrade_addon_transfer_time');
delete_site_option('synved_option_wp_upgrade_addon_transfer_time');
delete_option('synved_connect_id_default');
delete_site_option('synved_connect_id_default');
delete_option('widget_synved_social_share');
delete_site_option('widget_synved_social_share');
delete_option('widget_synved_social_follow');
delete_site_option('widget_synved_social_follow');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'synved_social_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'synved_social_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'synved_social_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'synved_social_exclude' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'synved_social_exclude_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'synved_social_exclude_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'synved_social_exclude_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'synved_social_exclude_share' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'synved_social_exclude_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'synved_social_exclude_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'synved_social_exclude_follow' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'synved_social_exclude_follow' ) );

