<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shortfilter_filter_type');
delete_site_option('shortfilter_filter_type');
delete_option('shortfilter_min_count');
delete_site_option('shortfilter_min_count');
delete_option('shortfilter_default_action');
delete_site_option('shortfilter_default_action');
delete_option('shortfilter_filter_users');
delete_site_option('shortfilter_filter_users');
delete_option('shortfilter_js_check');
delete_site_option('shortfilter_js_check');
delete_option('shortfilter_comment_count');
delete_site_option('shortfilter_comment_count');
delete_option('shortfilter_message');
delete_site_option('shortfilter_message');

