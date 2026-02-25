<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcsb_enable_protection');
delete_site_option('tcsb_enable_protection');
delete_option('tcsb_enable_logging');
delete_site_option('tcsb_enable_logging');
delete_option('tcsb_notification_email');
delete_site_option('tcsb_notification_email');
delete_option('tcsb_time_threshold');
delete_site_option('tcsb_time_threshold');
delete_option('tcsb_badwords_list');
delete_site_option('tcsb_badwords_list');
delete_option('tcsb_enable_japanese_skip');
delete_site_option('tcsb_enable_japanese_skip');
delete_option('tcsb_log_filename');
delete_site_option('tcsb_log_filename');

