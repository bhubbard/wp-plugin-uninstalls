<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mrr_setting_zomato_apikey');
delete_site_option('mrr_setting_zomato_apikey');
delete_option('mrr_setting_zomato_restid');
delete_site_option('mrr_setting_zomato_restid');
delete_option('mrr_setting_google_apikey');
delete_site_option('mrr_setting_google_apikey');
delete_option('mrr_setting_google_placeid');
delete_site_option('mrr_setting_google_placeid');
delete_option('mrr_setting_display_sortorder');
delete_site_option('mrr_setting_display_sortorder');
delete_option('mrr_setting_display_maxdisplayreviews');
delete_site_option('mrr_setting_display_maxdisplayreviews');
delete_option('mrr_setting_display_minrating');
delete_site_option('mrr_setting_display_minrating');
delete_option('mrr_setting_display_maxwords');
delete_site_option('mrr_setting_display_maxwords');
delete_option('mrr_setting_general_polltime');
delete_site_option('mrr_setting_general_polltime');
delete_option('mrr_setting_general_category');
delete_site_option('mrr_setting_general_category');
delete_option('mrr_setting_general_maxfetchreviews');
delete_site_option('mrr_setting_general_maxfetchreviews');
delete_option('mrr_setting_reviews');
delete_site_option('mrr_setting_reviews');

// Clear Cron Jobs
wp_clear_scheduled_hook('mrr_cron_hook');

