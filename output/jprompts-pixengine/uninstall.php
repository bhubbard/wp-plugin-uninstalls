<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixengine_lazy_loading_enabled');
delete_site_option('pixengine_lazy_loading_enabled');
delete_option('pixengine_responsive_enabled');
delete_site_option('pixengine_responsive_enabled');
delete_option('pixengine_picture_element');
delete_site_option('pixengine_picture_element');
delete_option('pixengine_quality');
delete_site_option('pixengine_quality');
delete_option('pixengine_max_width');
delete_site_option('pixengine_max_width');
delete_option('pixengine_output_format');
delete_site_option('pixengine_output_format');
delete_option('pixengine_avif_quality');
delete_site_option('pixengine_avif_quality');
delete_option('pixengine_lazy_loading_exclude_first');
delete_site_option('pixengine_lazy_loading_exclude_first');
delete_option('pixengine_cache_enabled');
delete_site_option('pixengine_cache_enabled');
delete_option('pixengine_cache_max_age');
delete_site_option('pixengine_cache_max_age');
delete_option('pixengine_newsletter_dismissed');
delete_site_option('pixengine_newsletter_dismissed');
delete_option('pixengine_usage_data');
delete_site_option('pixengine_usage_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('pixengine_monthly_reset');

