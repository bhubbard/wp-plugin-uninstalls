<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('__express-it-usage-option');
delete_site_option('__express-it-usage-option');
delete_option('__express-it-button-type');
delete_site_option('__express-it-button-type');

