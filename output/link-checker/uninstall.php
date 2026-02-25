<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('link-checker-token');
delete_site_option('link-checker-token');
delete_option('link-checker-max-fetchers');
delete_site_option('link-checker-max-fetchers');
delete_option('link-checker-login-page-url');
delete_site_option('link-checker-login-page-url');
delete_option('link-checker-login-form-selector');
delete_site_option('link-checker-login-form-selector');
delete_option('link-checker-login-data');
delete_site_option('link-checker-login-data');

