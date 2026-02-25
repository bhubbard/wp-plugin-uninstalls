<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('priority');
delete_site_option('priority');
delete_option('filename');
delete_site_option('filename');
delete_option('zip');
delete_site_option('zip');
delete_option('google');
delete_site_option('google');
delete_option('ask');
delete_site_option('ask');
delete_option('bing');
delete_site_option('bing');

