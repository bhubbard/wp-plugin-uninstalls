<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rg4wp_ignoredomains');
delete_site_option('rg4wp_ignoredomains');
delete_option('rg4wp_js');
delete_site_option('rg4wp_js');
delete_option('rg4wp_pulse');
delete_site_option('rg4wp_pulse');
delete_option('rg4wp_apikey');
delete_site_option('rg4wp_apikey');
delete_option('rg4wp_noadmintracking');
delete_site_option('rg4wp_noadmintracking');
delete_option('rg4wp_js_ignore3rdpartyerrors');
delete_site_option('rg4wp_js_ignore3rdpartyerrors');
delete_option('rg4wp_js_tags');
delete_site_option('rg4wp_js_tags');
delete_option('rg4wp_usertracking');
delete_site_option('rg4wp_usertracking');
delete_option('rg4wp_status');
delete_site_option('rg4wp_status');
delete_option('rg4wp_tags');
delete_site_option('rg4wp_tags');
delete_option('rg4wp_404s');
delete_site_option('rg4wp_404s');
delete_option('rg4wp_async');
delete_site_option('rg4wp_async');

