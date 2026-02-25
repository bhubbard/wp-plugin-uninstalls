<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stockquote_db_ver');
delete_site_option('stockquote_db_ver');
delete_option('stockquote_av_last');
delete_site_option('stockquote_av_last');
delete_option('stockquote_av_last_timestamp');
delete_site_option('stockquote_av_last_timestamp');
delete_option('stockquote_av_progress');
delete_site_option('stockquote_av_progress');
delete_option('stockquote_av_tier_end_timestamp');
delete_site_option('stockquote_av_tier_end_timestamp');
delete_option('stockquote_version');
delete_site_option('stockquote_version');
delete_option('stock_quote_defaults');
delete_site_option('stock_quote_defaults');
delete_option('stockquote_defaults');
delete_site_option('stockquote_defaults');

