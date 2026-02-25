<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('setting_include_files');
delete_site_option('setting_include_files');
delete_option('setting_exclude_files');
delete_site_option('setting_exclude_files');
delete_option('wpcag_ltime');
delete_site_option('wpcag_ltime');

