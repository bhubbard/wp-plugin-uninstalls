<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sports-bench-sport');
delete_site_option('sports-bench-sport');
delete_option('sports-bench-season-year');
delete_site_option('sports-bench-season-year');
delete_option('sports-bench-season');
delete_site_option('sports-bench-season');
delete_option('sports-bench-display-game');
delete_site_option('sports-bench-display-game');
delete_option('sports-bench-week-number');
delete_site_option('sports-bench-week-number');
delete_option('sports-bench-player-page');
delete_site_option('sports-bench-player-page');
delete_option('sports-bench-team-page');
delete_site_option('sports-bench-team-page');
delete_option('sports-bench-box-score-page');
delete_site_option('sports-bench-box-score-page');
delete_option('sports-bench-display-map');
delete_site_option('sports-bench-display-map');
delete_option('sports-bench-week-maps-api-key');
delete_site_option('sports-bench-week-maps-api-key');
delete_option('sports-bench-abbreviation-guide');
delete_site_option('sports-bench-abbreviation-guide');
delete_option('sports-bench-basketball-halves');
delete_site_option('sports-bench-basketball-halves');
delete_option('sports-bench-use-fonts');
delete_site_option('sports-bench-use-fonts');
delete_option('sports_bench_plugin_license_key');
delete_site_option('sports_bench_plugin_license_key');
delete_option('sports_bench_plugin_license_status');
delete_site_option('sports_bench_plugin_license_status');
delete_option('sports_bench_dashboard_widget_options');
delete_site_option('sports_bench_dashboard_widget_options');
delete_option('sports-bench-lite-upgrade-notice');
delete_site_option('sports-bench-lite-upgrade-notice');
delete_option('sports_bench_plugin_lifetime_license');
delete_site_option('sports_bench_plugin_lifetime_license');
delete_option('sports_bench_version');
delete_site_option('sports_bench_version');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_game' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_game' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_game' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_game' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_photo_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_photo_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_photo_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_photo_credit' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_game_preview_recap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_game_preview_recap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_game_preview_recap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_game_preview_recap' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_standings_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_standings_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_standings_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_standings_items' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_standings_league' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_standings_league' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_standings_league' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_standings_league' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_standings_conference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_standings_conference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_standings_conference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_standings_conference' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_standings_division' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_standings_division' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_standings_division' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_standings_division' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sports_bench_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sports_bench_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sports_bench_stats' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sports_bench_stats' ) );

