<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google-chrome-meta');
delete_site_option('google-chrome-meta');
delete_option('google-chrome-javascript');
delete_site_option('google-chrome-javascript');
delete_option('google-chrome-version');
delete_site_option('google-chrome-version');

