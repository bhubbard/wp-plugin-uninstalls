<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('open-weather-key');
delete_site_option('open-weather-key');
delete_option('aw-error-handling');
delete_site_option('aw-error-handling');

