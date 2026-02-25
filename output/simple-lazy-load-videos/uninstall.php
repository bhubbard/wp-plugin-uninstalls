<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sllv_version');
delete_site_option('sllv_version');
delete_option('sllv_settings');
delete_site_option('sllv_settings');
delete_option('sllv');
delete_site_option('sllv');

