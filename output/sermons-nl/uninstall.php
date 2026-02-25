<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sermons_nl_kerkomroep_mountpoint');
delete_site_option('sermons_nl_kerkomroep_mountpoint');
delete_option('sermons_nl_kerkomroep_min_delay');
delete_site_option('sermons_nl_kerkomroep_min_delay');
delete_option('sermons_nl_kerkomroep_min_ahead');
delete_site_option('sermons_nl_kerkomroep_min_ahead');
delete_option('sermons_nl_kerktijden_id');
delete_site_option('sermons_nl_kerktijden_id');
delete_option('sermons_nl_kerktijden_weeksahead');
delete_site_option('sermons_nl_kerktijden_weeksahead');
delete_option('sermons_nl_kerktijden_weeksback');
delete_site_option('sermons_nl_kerktijden_weeksback');
delete_option('sermons_nl_youtube_channel');
delete_site_option('sermons_nl_youtube_channel');
delete_option('sermons_nl_youtube_key');
delete_site_option('sermons_nl_youtube_key');
delete_option('sermons_nl_youtube_weeksback');
delete_site_option('sermons_nl_youtube_weeksback');
delete_option('sermons_nl_youtube_min_ahead');
delete_site_option('sermons_nl_youtube_min_ahead');
delete_option('sermons_nl_icon_color_archive');
delete_site_option('sermons_nl_icon_color_archive');
delete_option('sermons_nl_icon_color_planned');
delete_site_option('sermons_nl_icon_color_planned');
delete_option('sermons_nl_icon_color_live');
delete_site_option('sermons_nl_icon_color_live');
delete_option('sermons_nl_last_update_time');
delete_site_option('sermons_nl_last_update_time');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'sermons_nl_icon_color_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('sermons_nl_cron_quarterly');
wp_clear_scheduled_hook('sermons_nl_cron_daily');

