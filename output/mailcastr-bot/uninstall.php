<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mcbot_api_key');
delete_site_option('mcbot_api_key');
delete_option('api_key');
delete_site_option('api_key');

