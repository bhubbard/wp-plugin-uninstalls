<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gmc_reviews_opt_in_style');
delete_site_option('gmc_reviews_opt_in_style');
delete_option('gmc_reviews_delivery_days');
delete_site_option('gmc_reviews_delivery_days');
delete_option('gmc_reviews_badge_position');
delete_site_option('gmc_reviews_badge_position');
delete_option('gmc_reviews_merchant_id');
delete_site_option('gmc_reviews_merchant_id');
delete_option('gmc_reviews_gtm_enabled');
delete_site_option('gmc_reviews_gtm_enabled');
delete_option('gmc_reviews_gtm_event_name');
delete_site_option('gmc_reviews_gtm_event_name');
delete_option('brumigmcreview_debug_mode');
delete_site_option('brumigmcreview_debug_mode');
delete_option('gmc_reviews_script_placement');
delete_site_option('gmc_reviews_script_placement');
delete_option('brumigmcreview_optin_count');
delete_site_option('brumigmcreview_optin_count');

