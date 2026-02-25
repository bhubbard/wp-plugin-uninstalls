<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('check_baidu_result_get_name');
delete_site_option('check_baidu_result_get_name');
delete_option('check_baidu_result_show_to');
delete_site_option('check_baidu_result_show_to');

