<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_voicexpress_affiliate_code');
delete_site_option('_voicexpress_affiliate_code');
delete_option('voicexpress_crontab');
delete_site_option('voicexpress_crontab');
delete_option('voicexpress_player');
delete_site_option('voicexpress_player');
delete_option('voicexpress_theme');
delete_site_option('voicexpress_theme');
delete_option('voicexpress_show_spotify_icon');
delete_site_option('voicexpress_show_spotify_icon');
delete_option('voicexpress_spotify_url');
delete_site_option('voicexpress_spotify_url');
delete_option('voicexpress_hide_download');
delete_site_option('voicexpress_hide_download');
delete_option('voicexpress_hide_text');
delete_site_option('voicexpress_hide_text');
delete_option('voicexpress_enable_spotify');
delete_site_option('voicexpress_enable_spotify');
delete_option('voicexpress_single_start');
delete_site_option('voicexpress_single_start');
delete_option('voicexpress_single_end');
delete_site_option('voicexpress_single_end');
delete_option('voicexpress_auto');
delete_site_option('voicexpress_auto');
delete_option('voicexpress_credits');
delete_site_option('voicexpress_credits');
delete_option('voicexpress_voice');
delete_site_option('voicexpress_voice');
delete_option('voicexpress_secret_key');
delete_site_option('voicexpress_secret_key');
delete_option('voicexpress_podcast_rss');
delete_site_option('voicexpress_podcast_rss');
delete_option('voicexpress_podcast_title');
delete_site_option('voicexpress_podcast_title');
delete_option('voicexpress_podcast_description');
delete_site_option('voicexpress_podcast_description');
delete_option('voicexpress_promo_code');
delete_site_option('voicexpress_promo_code');
delete_option('voicexpress_promo_code_used');
delete_site_option('voicexpress_promo_code_used');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'voicexpress_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('voicexpress_account_connected');
delete_site_option('voicexpress_account_connected');

// Clear Cron Jobs
wp_clear_scheduled_hook('voicexpress_send_post');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_voicexpress_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_voicexpress_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_voicexpress_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_voicexpress_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_voicexpress_gerar_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_voicexpress_gerar_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_voicexpress_gerar_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_voicexpress_gerar_audio' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_voicexpress_voice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_voicexpress_voice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_voicexpress_voice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_voicexpress_voice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voicexpress_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voicexpress_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voicexpress_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voicexpress_hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'voicexpress_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'voicexpress_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'voicexpress_sent' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'voicexpress_sent' ) );

