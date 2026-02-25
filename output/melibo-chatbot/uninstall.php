<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('melibo_api_key');
delete_site_option('melibo_api_key');
delete_option('melibo_environment_id');
delete_site_option('melibo_environment_id');
delete_option('melibo_environment_select_pages');
delete_site_option('melibo_environment_select_pages');
delete_option('melibo_activate');
delete_site_option('melibo_activate');
delete_option('melibo_excluded_pages');
delete_site_option('melibo_excluded_pages');

