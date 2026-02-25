<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stw_cron_option');
delete_site_option('stw_cron_option');
delete_option('stw_timstamp_options_page');
delete_site_option('stw_timstamp_options_page');
delete_option('stw_time_check_images');
delete_site_option('stw_time_check_images');
delete_option('WPPortfolio_setting_stw_access_key');
delete_site_option('WPPortfolio_setting_stw_access_key');
delete_option('WPPortfolio_setting_stw_secret_key');
delete_site_option('WPPortfolio_setting_stw_secret_key');
delete_option('pptimage');
delete_site_option('pptimage');
delete_option('imagestorage_link');
delete_site_option('imagestorage_link');
delete_option('imagestorage_path');
delete_site_option('imagestorage_path');
delete_option('stw_refresh_last_timestamp');
delete_site_option('stw_refresh_last_timestamp');
delete_option('stw_doing_refresh');
delete_site_option('stw_doing_refresh');
delete_option('WPPortfolio_setting_stw_thumb_size');
delete_site_option('WPPortfolio_setting_stw_thumb_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpstw_cron');
wp_clear_scheduled_hook('stw_cron_cache');

