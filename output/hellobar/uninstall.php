<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hellobar_api_key');
delete_site_option('hellobar_api_key');
delete_option('_hellobar-for-wordpress--options');
delete_site_option('_hellobar-for-wordpress--options');

