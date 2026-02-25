<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('njt_fs_settings');
delete_site_option('njt_fs_settings');
delete_option('njt_fs_review');
delete_site_option('njt_fs_review');
delete_option('njt_fs_selector_themes');
delete_site_option('njt_fs_selector_themes');
delete_option('njt_fs_first_time_active');
delete_site_option('njt_fs_first_time_active');
delete_option('njt_fs_version');
delete_site_option('njt_fs_version');

