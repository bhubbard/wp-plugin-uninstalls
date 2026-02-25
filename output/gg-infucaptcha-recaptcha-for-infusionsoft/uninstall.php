<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_site_key');
delete_site_option('google_site_key');
delete_option('google_site_secret');
delete_site_option('google_site_secret');
delete_option('google_lang');
delete_site_option('google_lang');
delete_option('google_theme');
delete_site_option('google_theme');
delete_option('custom_error_message');
delete_site_option('custom_error_message');

