<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpletoc_wrapper_enabled');
delete_site_option('simpletoc_wrapper_enabled');
delete_option('simpletoc_accordion_enabled');
delete_site_option('simpletoc_accordion_enabled');
delete_option('simpletoc_absolute_urls_enabled');
delete_site_option('simpletoc_absolute_urls_enabled');
delete_option('simpletoc_smooth_enabled');
delete_site_option('simpletoc_smooth_enabled');
delete_option('simpletoc_autoupdate_enabled');
delete_site_option('simpletoc_autoupdate_enabled');

