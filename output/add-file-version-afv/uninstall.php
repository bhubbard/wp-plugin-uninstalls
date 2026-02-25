<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afv_auto_ver');
delete_site_option('afv_auto_ver');
delete_option('afv_ver_target_file');
delete_site_option('afv_ver_target_file');
delete_option('afv_manual_ver');
delete_site_option('afv_manual_ver');
delete_option('afv_manual_ver_input');
delete_site_option('afv_manual_ver_input');

