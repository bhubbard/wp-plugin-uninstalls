<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tinypng-api');
delete_site_option('tinypng-api');
delete_option('tinypng-email-id');
delete_site_option('tinypng-email-id');

