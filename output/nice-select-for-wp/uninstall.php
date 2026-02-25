<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selector');
delete_site_option('selector');
delete_option('alignment');
delete_site_option('alignment');
delete_option('fullWidth');
delete_site_option('fullWidth');
delete_option('placeholder_text');
delete_site_option('placeholder_text');
delete_option('custom_css');
delete_site_option('custom_css');

