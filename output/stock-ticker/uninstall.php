<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stockticker_db_ver');
delete_site_option('stockticker_db_ver');
delete_option('stockticker_av_last');
delete_site_option('stockticker_av_last');
delete_option('stockticker_av_last_timestamp');
delete_site_option('stockticker_av_last_timestamp');
delete_option('stockticker_av_progress');
delete_site_option('stockticker_av_progress');
delete_option('av_api_tier_free_quota');
delete_site_option('av_api_tier_free_quota');
delete_option('stockticker_av_tier_end_timestamp');
delete_site_option('stockticker_av_tier_end_timestamp');
delete_option('stockticker_version');
delete_site_option('stockticker_version');
delete_option('stock_ticker_defaults');
delete_site_option('stock_ticker_defaults');
delete_option('stockticker_defaults');
delete_site_option('stockticker_defaults');
delete_option('st_symbols');
delete_site_option('st_symbols');
delete_option('st_show');
delete_site_option('st_show');
delete_option('st_quote_zero');
delete_site_option('st_quote_zero');
delete_option('st_quote_minus');
delete_site_option('st_quote_minus');
delete_option('st_quote_plus');
delete_site_option('st_quote_plus');
delete_option('stockticker_av_latest');
delete_site_option('stockticker_av_latest');
delete_option('stockticker_av_latest_timestamp');
delete_site_option('stockticker_av_latest_timestamp');

