<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('personizely_api_key');
delete_site_option('personizely_api_key');
delete_option('personizely_async');
delete_site_option('personizely_async');

