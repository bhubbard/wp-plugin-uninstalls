<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('adrotate_advert_status');
delete_site_option('adrotate_advert_status');
delete_option('adrotate_hide_getpro');
delete_site_option('adrotate_hide_getpro');
delete_option('adrotate_db_version');
delete_site_option('adrotate_db_version');
delete_option('adrotate_version');
delete_site_option('adrotate_version');
delete_option('adrotate_notifications');
delete_site_option('adrotate_notifications');
delete_option('BorlabsCacheConfigInactive');
delete_site_option('BorlabsCacheConfigInactive');
delete_option('adrotate_dynamic_required');
delete_site_option('adrotate_dynamic_required');
delete_option('adrotate_group_css');
delete_site_option('adrotate_group_css');
delete_option('adrotate_config');
delete_site_option('adrotate_config');
delete_option('adrotate_crawlers');
delete_site_option('adrotate_crawlers');
delete_option('adrotate_geo_required');
delete_site_option('adrotate_geo_required');
delete_option('adrotate_geo_requests');
delete_site_option('adrotate_geo_requests');
delete_option('adrotate_header_output');
delete_site_option('adrotate_header_output');
delete_option('adrotate_hide_license');
delete_site_option('adrotate_hide_license');
delete_option('adrotate_hide_review');
delete_site_option('adrotate_hide_review');
delete_option('adrotate_hide_birthday');
delete_site_option('adrotate_hide_birthday');
delete_option('adrotate_responsive_required');
delete_site_option('adrotate_responsive_required');
delete_option('adrotate_hide_premium');
delete_site_option('adrotate_hide_premium');
delete_option('adrotate_hide_premium_2');
delete_site_option('adrotate_hide_premium_2');
delete_option('adrotate_hide_premium_3');
delete_site_option('adrotate_hide_premium_3');
delete_option('adrotate_hide_translation');
delete_site_option('adrotate_hide_translation');
delete_option('adrotate_hide_banner');
delete_site_option('adrotate_hide_banner');
delete_option('adrotate_hide_competition');
delete_site_option('adrotate_hide_competition');

// Clear Cron Jobs
wp_clear_scheduled_hook('adrotate_empty_trackerdata');
wp_clear_scheduled_hook('adrotate_delete_transients');
wp_clear_scheduled_hook('adrotate_evaluate_ads');

