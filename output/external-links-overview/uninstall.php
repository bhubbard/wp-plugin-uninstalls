<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seokelo_last_external_check_time');
delete_site_option('seokelo_last_external_check_time');
delete_option('seokelo_batch_offset');
delete_site_option('seokelo_batch_offset');
delete_option('seokelo_batch_offset_check');
delete_site_option('seokelo_batch_offset_check');
delete_option('seokelo_cache_timestamp');
delete_site_option('seokelo_cache_timestamp');
delete_option('seokelo_posts_to_update');
delete_site_option('seokelo_posts_to_update');
delete_option('seokelo_widget_enabled');
delete_site_option('seokelo_widget_enabled');
delete_option('seokelo_total_posts_to_scan');
delete_site_option('seokelo_total_posts_to_scan');
delete_option('seokelo_last_error');
delete_site_option('seokelo_last_error');
delete_option('seokelo_last_external_check_count');
delete_site_option('seokelo_last_external_check_count');
delete_option('seokelo_last_external_broken_count');
delete_site_option('seokelo_last_external_broken_count');

