<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('phpcompat_checker_php_version');
delete_site_option('phpcompat_checker_php_version');
delete_option('phpcompat_checker_report_mode');
delete_site_option('phpcompat_checker_report_mode');
delete_option('phpcompat_checker_batch_size');
delete_site_option('phpcompat_checker_batch_size');
delete_option('phpcompat_checker_skip_vendor');
delete_site_option('phpcompat_checker_skip_vendor');
delete_option('phpcompat_checker_stop_scan');
delete_site_option('phpcompat_checker_stop_scan');

