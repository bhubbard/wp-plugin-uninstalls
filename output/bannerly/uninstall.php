<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bannerly_options');
delete_site_option('bannerly_options');
delete_option('bannerly_api_key');
delete_site_option('bannerly_api_key');

