<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('orghunter_api_url');
delete_site_option('orghunter_api_url');
delete_option('orghunter_api_key');
delete_site_option('orghunter_api_key');
delete_option('orghunter_charity_search_categories_cache');
delete_site_option('orghunter_charity_search_categories_cache');
delete_option('orghunter_charity_search_results_page_id');
delete_site_option('orghunter_charity_search_results_page_id');
delete_option('orghunter_affiliate_id');
delete_site_option('orghunter_affiliate_id');
delete_option('orghunter_return_url');
delete_site_option('orghunter_return_url');
delete_option('orghunter_results_count');
delete_site_option('orghunter_results_count');
delete_option('orghunter_powered_by');
delete_site_option('orghunter_powered_by');

