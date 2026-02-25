<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp-yadisk-files-default-download-label');
delete_site_option('wp-yadisk-files-default-download-label');
delete_option('wp-yadisk-files-root-directory');
delete_site_option('wp-yadisk-files-root-directory');
delete_option('wp-yadisk-files-default-directory');
delete_site_option('wp-yadisk-files-default-directory');
delete_option('wp-yadisk-files-login');
delete_site_option('wp-yadisk-files-login');
delete_option('wp-yadisk-files-pass');
delete_site_option('wp-yadisk-files-pass');
delete_option('wp-yadisk-files-transparent-mode');
delete_site_option('wp-yadisk-files-transparent-mode');
delete_option('yadisk_download_counters');
delete_site_option('yadisk_download_counters');

