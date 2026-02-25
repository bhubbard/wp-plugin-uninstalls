<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clafc_custom_css');
delete_site_option('clafc_custom_css');
delete_option('abl_clafc_version');
delete_site_option('abl_clafc_version');
delete_option('admincssmu_custom_css');
delete_site_option('admincssmu_custom_css');

