<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ob_campayn_apikey');
delete_site_option('ob_campayn_apikey');
delete_option('campayn_forms_table');
delete_site_option('campayn_forms_table');
delete_option('ob_campayn_list');
delete_site_option('ob_campayn_list');
delete_option('ob_campayn_enabled');
delete_site_option('ob_campayn_enabled');
delete_option('ob_campayn_text');
delete_site_option('ob_campayn_text');
delete_option('campayn_dbversion');
delete_site_option('campayn_dbversion');

