<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('re_sitekey');
delete_site_option('re_sitekey');
delete_option('re_secret');
delete_site_option('re_secret');
delete_option('re_response');
delete_site_option('re_response');

