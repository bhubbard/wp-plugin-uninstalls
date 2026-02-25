<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwc_widget_options');
delete_site_option('cwc_widget_options');
delete_option('cwc_review_status');
delete_site_option('cwc_review_status');
delete_option('cwc_usage_count');
delete_site_option('cwc_usage_count');
delete_option('cwc_activation_date');
delete_site_option('cwc_activation_date');

