<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trinity_audio_max_exec_time');
delete_site_option('trinity_audio_max_exec_time');
delete_option('trinity_audio_installkey');
delete_site_option('trinity_audio_installkey');
delete_option('trinity_audio_bulk_update_heartbeat');
delete_site_option('trinity_audio_bulk_update_heartbeat');
delete_option('trinity_audio_bulk_update_num_posts_updated');
delete_site_option('trinity_audio_bulk_update_num_posts_updated');
delete_option('trinity_audio_gender_id');
delete_site_option('trinity_audio_gender_id');
delete_option('trinity_audio_defconf');
delete_site_option('trinity_audio_defconf');
delete_option('trinity_audio_add_post_title');
delete_site_option('trinity_audio_add_post_title');
delete_option('trinity_audio_add_post_excerpt');
delete_site_option('trinity_audio_add_post_excerpt');
delete_option('trinity_audio_position');
delete_site_option('trinity_audio_position');
delete_option('trinity_audio_poweredby');
delete_site_option('trinity_audio_poweredby');
delete_option('trinity_audio_skip_tags');
delete_site_option('trinity_audio_skip_tags');
delete_option('trinity_audio');
delete_site_option('trinity_audio');
delete_option('trinity_audio_update_all');
delete_site_option('trinity_audio_update_all');
delete_option('trinity_audio_source_language');
delete_site_option('trinity_audio_source_language');
delete_option('trinity_audio_check_for_loop');
delete_site_option('trinity_audio_check_for_loop');
delete_option('trinity_player_position');
delete_site_option('trinity_player_position');
delete_option('trinity_audio_configuration_v5_failed');
delete_site_option('trinity_audio_configuration_v5_failed');
delete_option('trinity_audio_voice_id');
delete_site_option('trinity_audio_voice_id');
delete_option('trinity_audio_translate');
delete_site_option('trinity_audio_translate');

// Delete Transients
delete_transient('trinity_audio_languages_cache');
delete_site_transient('trinity_audio_languages_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('bl_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'trinity_audio_post_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'trinity_audio_post_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'trinity_audio_post_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'trinity_audio_post_hash' ) );

