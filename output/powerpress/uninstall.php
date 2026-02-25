<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('powerpress_network_title');
delete_site_option('powerpress_network_title');
delete_option('powerpress_network_map');
delete_site_option('powerpress_network_map');
delete_option('powerpress_network');
delete_site_option('powerpress_network');
delete_option('powerpress_network_id');
delete_site_option('powerpress_network_id');
delete_option('powerpress_general');
delete_site_option('powerpress_general');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'powerpress_feed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('powerpress_network_creds');
delete_site_option('powerpress_network_creds');
delete_option('powerpress_network_temp_client');
delete_site_option('powerpress_network_temp_client');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%-l' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'powerpress_posttype_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('powerpress_bplayer');
delete_site_option('powerpress_bplayer');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'powerpress_cat_feed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('powerpress_taxonomy_podcasting');
delete_site_option('powerpress_taxonomy_podcasting');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'powerpress_taxonomy_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('powerpress_feed');
delete_site_option('powerpress_feed');
delete_option('powerpress_user_check_completed');
delete_site_option('powerpress_user_check_completed');
delete_option('powerpress_chartable_check');
delete_site_option('powerpress_chartable_check');
delete_option('powerpress_creds');
delete_site_option('powerpress_creds');
delete_option('pp_programmatic_enabled_shows');
delete_site_option('pp_programmatic_enabled_shows');
delete_option('pp_progad_sync_error');
delete_site_option('pp_progad_sync_error');
delete_option('pp_progad_sync_success');
delete_site_option('pp_progad_sync_success');
delete_option('powerpress_posttype-podcasting');
delete_site_option('powerpress_posttype-podcasting');
delete_option('powerpress_posttype_podcasting');
delete_site_option('powerpress_posttype_podcasting');
delete_option('podPress_config');
delete_site_option('podPress_config');
delete_option('powerpress_migrate_queued');
delete_site_option('powerpress_migrate_queued');
delete_option('powerpress_migrate_status');
delete_site_option('powerpress_migrate_status');
delete_option('powerpress_multisite');
delete_site_option('powerpress_multisite');
delete_option('lit_error');
delete_site_option('lit_error');
delete_option('lit_error_msg');
delete_site_option('lit_error_msg');
delete_option('powerpress_stats_notice_dismissed');
delete_site_option('powerpress_stats_notice_dismissed');
delete_option('powerpress_artwork_notice_dismissed');
delete_site_option('powerpress_artwork_notice_dismissed');
delete_option('powerpress_dismissed_notices');
delete_site_option('powerpress_dismissed_notices');
delete_option('powerpress_feed_podcast');
delete_site_option('powerpress_feed_podcast');
delete_option('powerpress_stats');
delete_site_option('powerpress_stats');
delete_option('blubrry_manage_media');
delete_site_option('blubrry_manage_media');
delete_option('powerpress_migrate_results');
delete_site_option('powerpress_migrate_results');
delete_option('powerpress_migrate_completed');
delete_site_option('powerpress_migrate_completed');
delete_option('powerpress_track_number');
delete_site_option('powerpress_track_number');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_notice_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('update_plugins');
delete_site_option('update_plugins');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('powerpress_errors');
delete_site_option('powerpress_errors');
delete_option('rss_image');
delete_site_option('rss_image');
delete_option('pod_player_location');
delete_site_option('pod_player_location');
delete_option('pod_audio_width');
delete_site_option('pod_audio_width');
delete_option('pod_player_width');
delete_site_option('pod_player_width');
delete_option('pod_player_height');
delete_site_option('pod_player_height');
delete_option('pod_itunes_image');
delete_site_option('pod_itunes_image');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'pod_itunes_cat%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pod_itunes_ownername');
delete_site_option('pod_itunes_ownername');
delete_option('pod_itunes_owneremail');
delete_site_option('pod_itunes_owneremail');
delete_option('rss_language');
delete_site_option('rss_language');
delete_option('pod_tagline');
delete_site_option('pod_tagline');
delete_option('pod_itunes_explicit');
delete_site_option('pod_itunes_explicit');
delete_option('powerpress_podping_authkey');
delete_site_option('powerpress_podping_authkey');
delete_option('network_general');
delete_site_option('network_general');
delete_option('powerpress_temp_client');
delete_site_option('powerpress_temp_client');
delete_option('powerpress_blubrry_api_redirect_uri');
delete_site_option('powerpress_blubrry_api_redirect_uri');
delete_option('powerpress_onboarding');
delete_site_option('powerpress_onboarding');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_feed_%', '_site_transient_feed_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_feed_mod_%', '_site_transient_feed_mod_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('updateProgram');
wp_clear_scheduled_hook('powerpress_admin_migration_hook');
wp_clear_scheduled_hook('powerpress_check_for_chartable_hook');
wp_clear_scheduled_hook('powerpress_sync_progad_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%:metamarks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%:metamarks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%:metamarks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%:metamarks' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_powerpress_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_powerpress_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_powerpress_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_powerpress_guid' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%:enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%:enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%:enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%:enclosure' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pp_default_podcast' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pp_default_podcast' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pp_default_podcast' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pp_default_podcast' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'podPressPostSpecific' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'podPressPostSpecific' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'podPressPostSpecific' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'podPressPostSpecific' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'itunes:duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'itunes:duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'itunes:duration' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'itunes:duration' ) );

