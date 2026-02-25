<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('presto_player_visits_database_version');
delete_site_option('presto_player_visits_database_version');
delete_option('presto_player_uninstall');
delete_site_option('presto_player_uninstall');
delete_option('presto_player_license');
delete_site_option('presto_player_license');
delete_option('presto_player_license_data');
delete_site_option('presto_player_license_data');
delete_option('presto_player_analytics');
delete_site_option('presto_player_analytics');
delete_option('presto_player_google_analytics');
delete_site_option('presto_player_google_analytics');
delete_option('presto_player_branding');
delete_site_option('presto_player_branding');
delete_option('presto_player_bunny_keys');
delete_site_option('presto_player_bunny_keys');
delete_option('presto_player_bunny_storage_zones');
delete_site_option('presto_player_bunny_storage_zones');
delete_option('presto_player_bunny_pull_zones');
delete_site_option('presto_player_bunny_pull_zones');
delete_option('presto_player_bunny_uid');
delete_site_option('presto_player_bunny_uid');
delete_option('presto_player_instant_video_width');
delete_site_option('presto_player_instant_video_width');
delete_option('presto_player_media_hub_sync_default');
delete_site_option('presto_player_media_hub_sync_default');
delete_option('presto_player_dismissed_notice_nginx_rules');
delete_site_option('presto_player_dismissed_notice_nginx_rules');
delete_option('presto_player_presto_player_bunny_uid');
delete_site_option('presto_player_presto_player_bunny_uid');
delete_option('presto_player_dismissed_notice_presto_player_reusable_notice');
delete_site_option('presto_player_dismissed_notice_presto_player_reusable_notice');
delete_option('presto_preset_seed_version');
delete_site_option('presto_preset_seed_version');
delete_option('presto_player_videos_database_version');
delete_site_option('presto_player_videos_database_version');
delete_option('presto_player_presets_database_version');
delete_site_option('presto_player_presets_database_version');
delete_option('presto_zone_token');
delete_site_option('presto_zone_token');
delete_option('presto_player_visits_upgrade_version');
delete_site_option('presto_player_visits_upgrade_version');
delete_option('presto_player_pro_update_performance');
delete_site_option('presto_player_pro_update_performance');
delete_option('presto_player_audio_presets_database_version');
delete_site_option('presto_player_audio_presets_database_version');
delete_option('presto_player_email_collection_database_version');
delete_site_option('presto_player_email_collection_database_version');
delete_option('presto_audio_preset_seed_version');
delete_site_option('presto_audio_preset_seed_version');
delete_option('llms_av_prog_auto_play');
delete_site_option('llms_av_prog_auto_play');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'presto_player_dismissed_notice_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('widget_block');
delete_site_option('widget_block');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bsf_usage_last_displayed_time');
delete_site_option('bsf_usage_last_displayed_time');
delete_option('bsf_usage_migrated');
delete_site_option('bsf_usage_migrated');
delete_option('bsf_analytics_last_displayed_time');
delete_site_option('bsf_analytics_last_displayed_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_optin' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_analytics_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_usage_installed_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('allowed_astra_notices');
delete_site_option('allowed_astra_notices');

// Delete Transients
delete_transient('presto-player-rating');
delete_site_transient('presto-player-rating');
delete_transient('bsf_analytics_track');
delete_site_transient('bsf_analytics_track');
delete_transient('bsf_usage_track');
delete_site_transient('bsf_usage_track');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'presto-private-video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'presto-private-video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'presto-private-video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'presto-private-video' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'presto_player_instant_video_pages_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'presto_player_instant_video_pages_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'presto_player_instant_video_pages_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'presto_player_instant_video_pages_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'presto_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'presto_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'presto_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'presto_external_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'presto_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'presto_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'presto_video_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'presto_video_type' ) );

