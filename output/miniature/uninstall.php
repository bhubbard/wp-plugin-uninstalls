<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('miniature_options');
delete_site_option('miniature_options');
delete_option('miniature_cache');
delete_site_option('miniature_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('miniature_thumbinfo_build_schedule');
wp_clear_scheduled_hook('miniature_thumbs_rebuild_schedule');
wp_clear_scheduled_hook('miniature_single_thumb_build_schedule');
wp_clear_scheduled_hook('miniature_thumbs_rebuilding_schedule');

