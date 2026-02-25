<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookietractor_website_code');
delete_site_option('cookietractor_website_code');
delete_option('cookietractor_use_site_language');
delete_site_option('cookietractor_use_site_language');

