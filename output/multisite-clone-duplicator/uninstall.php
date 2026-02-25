<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mucd_disable_enhanced_site_select');
delete_site_option('mucd_disable_enhanced_site_select');
delete_option('mucd_duplicables');
delete_site_option('mucd_duplicables');
delete_option('mucd_copy_files');
delete_site_option('mucd_copy_files');
delete_option('mucd_keep_users');
delete_site_option('mucd_keep_users');
delete_option('mucd_log');
delete_site_option('mucd_log');
delete_option('mucd_log_dir');
delete_site_option('mucd_log_dir');

