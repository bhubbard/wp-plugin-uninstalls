<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_key');
delete_site_option('api_key');
delete_option('list_id');
delete_site_option('list_id');
delete_option('customize_html');
delete_site_option('customize_html');

