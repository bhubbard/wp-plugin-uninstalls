<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ndu_today_date_format');
delete_site_option('ndu_today_date_format');
delete_option('ndu_convert_post_date');
delete_site_option('ndu_convert_post_date');
delete_option('ndu_date_format_for_home');
delete_site_option('ndu_date_format_for_home');
delete_option('ndu_date_format');
delete_site_option('ndu_date_format');

