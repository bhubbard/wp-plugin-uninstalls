<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wodify_program');
delete_site_option('wodify_program');
delete_option('wodify_location');
delete_site_option('wodify_location');
delete_option('wodify_timezone');
delete_site_option('wodify_timezone');
delete_option('wdfy_prg_inactive');
delete_site_option('wdfy_prg_inactive');
delete_option('wdfy_publishdatesetting');
delete_site_option('wdfy_publishdatesetting');
delete_option('wdfy_publishoffset');
delete_site_option('wdfy_publishoffset');
delete_option('wdfy_classes_cron');
delete_site_option('wdfy_classes_cron');
delete_option('wdfy_wodpublish_cron');
delete_site_option('wdfy_wodpublish_cron');
delete_option('wdfy_wodpublish_days');
delete_site_option('wdfy_wodpublish_days');
delete_option('wdfy_show_wodimages');
delete_site_option('wdfy_show_wodimages');
delete_option('wdfy_local_images');
delete_site_option('wdfy_local_images');
delete_option('widget_sos_wodify_wod_widget');
delete_site_option('widget_sos_wodify_wod_widget');
delete_option('wdfy_coach_url');
delete_site_option('wdfy_coach_url');
delete_option('wdfy_prg_image');
delete_site_option('wdfy_prg_image');
delete_option('wdfy_schema_siteimage');
delete_site_option('wdfy_schema_siteimage');
delete_option('wdfy_schema_pricerange');
delete_site_option('wdfy_schema_pricerange');
delete_option('wdfy_schema_phone');
delete_site_option('wdfy_schema_phone');
delete_option('wdfy_schema_addjson');
delete_site_option('wdfy_schema_addjson');
delete_option('wdfy_wpub_location');
delete_site_option('wdfy_wpub_location');
delete_option('wdfy_wpub_program');
delete_site_option('wdfy_wpub_program');
delete_option('wdfy_wpub_autocreate');
delete_site_option('wdfy_wpub_autocreate');
delete_option('wdfy_wpub_title');
delete_site_option('wdfy_wpub_title');
delete_option('wdfy_wpub_publish');
delete_site_option('wdfy_wpub_publish');
delete_option('wdfy_wpub_incomp');
delete_site_option('wdfy_wpub_incomp');
delete_option('wdfy_wpub_excomp');
delete_site_option('wdfy_wpub_excomp');
delete_option('wdfy_wpub_category');
delete_site_option('wdfy_wpub_category');
delete_option('wdfy_wpub_posttype');
delete_site_option('wdfy_wpub_posttype');
delete_option('wdfy_wpub_author');
delete_site_option('wdfy_wpub_author');
delete_option('wdfy_wpub_images');
delete_site_option('wdfy_wpub_images');
delete_option('wdfy_wpub_thumb');
delete_site_option('wdfy_wpub_thumb');
delete_option('wodify_apikey');
delete_site_option('wodify_apikey');
delete_option('wdfy_locations');
delete_site_option('wdfy_locations');
delete_option('wdfy_programs');
delete_site_option('wdfy_programs');
delete_option('wdfy_coaches');
delete_site_option('wdfy_coaches');
delete_option('wodify_debugmode');
delete_site_option('wodify_debugmode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wdfy_image_attachid%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wdfy_alexa_magicnumber');
delete_site_option('wdfy_alexa_magicnumber');
delete_option('wdfy_api_program_short');
delete_site_option('wdfy_api_program_short');
delete_option('wdfy_api_program');
delete_site_option('wdfy_api_program');
delete_option('wdfy_apiactive');
delete_site_option('wdfy_apiactive');
delete_option('wdfy_prg_bgcolor');
delete_site_option('wdfy_prg_bgcolor');
delete_option('wdfy_prg_url');
delete_site_option('wdfy_prg_url');
delete_option('wdfy_prg_restshortname');
delete_site_option('wdfy_prg_restshortname');

// Delete Transients
delete_transient('wdfy_cachedlocation');
delete_site_transient('wdfy_cachedlocation');
delete_transient('wdfy_cachedprogram');
delete_site_transient('wdfy_cachedprogram');
delete_transient('wdfy_cachedcoach');
delete_site_transient('wdfy_cachedcoach');
delete_transient('wdfy_cache_date');
delete_site_transient('wdfy_cache_date');

// Clear Cron Jobs
wp_clear_scheduled_hook('wdfy_cron_cache_classes');
wp_clear_scheduled_hook('wdfy_cron_wodpublish');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wdfy_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wdfy_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wdfy_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wdfy_date' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wdfy_program' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wdfy_program' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wdfy_program' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wdfy_program' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wdfy_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wdfy_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wdfy_location' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wdfy_location' ) );

