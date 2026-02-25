<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stag_options');
delete_site_option('stag_options');
delete_option('stagtools_settings_general');
delete_site_option('stagtools_settings_general');
delete_option('stagtools_settings_social');
delete_site_option('stagtools_settings_social');
delete_option('twitterwptoken');
delete_site_option('twitterwptoken');
delete_option('stag_custom_sidebars');
delete_site_option('stag_custom_sidebars');
delete_option('stag_twitter_widget_tweets');
delete_site_option('stag_twitter_widget_tweets');
delete_option('stag_twitter_widget_last_cache');
delete_site_option('stag_twitter_widget_last_cache');

// Delete Transients
delete_transient('codestag_themes_list');
delete_site_transient('codestag_themes_list');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_stag_team_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_stag_team_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_stag_team_info' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_stag_team_info' ) );

