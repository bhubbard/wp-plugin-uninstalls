<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dms_multisite');
delete_site_option('dms_multisite');
delete_option('dms_sorting');
delete_site_option('dms_sorting');
delete_option('dms_placeholder');
delete_site_option('dms_placeholder');
delete_option('dms_select_name');
delete_site_option('dms_select_name');
delete_option('dms_options');
delete_site_option('dms_options');

