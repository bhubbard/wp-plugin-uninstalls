<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviewstream_version');
delete_site_option('reviewstream_version');
delete_option('reviewstream_active');
delete_site_option('reviewstream_active');
delete_option('rs_api_token');
delete_site_option('rs_api_token');
delete_option('rs_path');
delete_site_option('rs_path');
delete_option('rs_default_count');
delete_site_option('rs_default_count');
delete_option('rs_type');
delete_site_option('rs_type');
delete_option('rs_schema');
delete_site_option('rs_schema');
delete_option('rs_review_display');
delete_site_option('rs_review_display');
delete_option('rs_schema_direct_only');
delete_site_option('rs_schema_direct_only');
delete_option('rs_show_aggregate_rating');
delete_site_option('rs_show_aggregate_rating');
delete_option('rs_last_initial');
delete_site_option('rs_last_initial');
delete_option('rs_show_reviews');
delete_site_option('rs_show_reviews');
delete_option('rs_include_empty');
delete_site_option('rs_include_empty');
delete_option('rs_stream_only');
delete_site_option('rs_stream_only');
delete_option('rs_show_powered_by');
delete_site_option('rs_show_powered_by');
delete_option('rs_pager');
delete_site_option('rs_pager');

