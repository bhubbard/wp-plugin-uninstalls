<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lws_optimize_deactivate_temporarily');
delete_site_option('lws_optimize_deactivate_temporarily');
delete_option('lws_optimize_offline');
delete_site_option('lws_optimize_offline');
delete_option('lws_optimize_config_array');
delete_site_option('lws_optimize_config_array');
delete_option('lws_optimize_sitemap_urls');
delete_site_option('lws_optimize_sitemap_urls');
delete_option('lws_optimize_preload_is_ongoing');
delete_site_option('lws_optimize_preload_is_ongoing');
delete_option('lws_optimize_pagespeed_history');
delete_site_option('lws_optimize_pagespeed_history');
delete_option('lws_optimize_cache_statistics');
delete_site_option('lws_optimize_cache_statistics');
delete_option('lws_optimize_original_image');
delete_site_option('lws_optimize_original_image');
delete_option('lws_optimize_images_convertion');
delete_site_option('lws_optimize_images_convertion');
delete_option('lws_optimize_current_convertion_stats');
delete_site_option('lws_optimize_current_convertion_stats');
delete_option('lws_optimize_all_media_convertion');
delete_site_option('lws_optimize_all_media_convertion');
delete_option('lws_optimize_image_autoconversion_options');
delete_site_option('lws_optimize_image_autoconversion_options');
delete_option('lws_optimize_image_conversion_options');
delete_site_option('lws_optimize_image_conversion_options');
delete_option('lws_optimize_image_api_key');
delete_site_option('lws_optimize_image_api_key');
delete_option('lws_from_autoinstall_optimize');
delete_site_option('lws_from_autoinstall_optimize');
delete_option('wp_lwsoptimize_post_update');
delete_site_option('wp_lwsoptimize_post_update');
delete_option('lwsop_do_not_ask_again');
delete_site_option('lwsop_do_not_ask_again');
delete_option('lws_opti_memcaching_on');
delete_site_option('lws_opti_memcaching_on');
delete_option('lwsop_autopurge');
delete_site_option('lwsop_autopurge');
delete_option('lws_op_deactivated');
delete_site_option('lws_op_deactivated');
delete_option('lws_op_change_max_width_media');
delete_site_option('lws_op_change_max_width_media');
delete_option('lws_op_fb_cache');
delete_site_option('lws_op_fb_cache');
delete_option('lws_op_fb_exclude');
delete_site_option('lws_op_fb_exclude');
delete_option('lws_op_fb_preload_state');
delete_site_option('lws_op_fb_preload_state');
delete_option('polylang');
delete_site_option('polylang');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('lwsop_plugin_version');
delete_site_option('lwsop_plugin_version');

// Delete Transients
delete_transient('lws_optimize_conversion_lock');
delete_site_transient('lws_optimize_conversion_lock');
delete_transient('lwsop_remind_me');
delete_site_transient('lwsop_remind_me');

// Clear Cron Jobs
wp_clear_scheduled_hook('lws_optimize_maintenance_db_weekly');
wp_clear_scheduled_hook('lws_optimize_start_filebased_preload');
wp_clear_scheduled_hook('lws_optimize_clear_filebased_cache_cron');
wp_clear_scheduled_hook('lwsop_revertOptimization');
wp_clear_scheduled_hook('lws_optimize_image_conversion_cron');
wp_clear_scheduled_hook('lws_optimize_pro_image_conversion_cron');
wp_clear_scheduled_hook('lws_optimize_image_deconversion_cron');
wp_clear_scheduled_hook('lws_optimize_clear_filebased_cache');
wp_clear_scheduled_hook('lws_optimize_convert_media_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attached_file' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_metadata' ) );

