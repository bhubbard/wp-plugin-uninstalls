<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('searchTagCloudOption');
delete_site_option('searchTagCloudOption');
delete_option('widgetText');
delete_site_option('widgetText');
delete_option('max_size');
delete_site_option('max_size');
delete_option('min_size');
delete_site_option('min_size');
delete_option('total_tags');
delete_site_option('total_tags');
delete_option('checkbox_visible');
delete_site_option('checkbox_visible');
delete_option('show_author_credit');
delete_site_option('show_author_credit');
delete_option('days_to_display');
delete_site_option('days_to_display');

