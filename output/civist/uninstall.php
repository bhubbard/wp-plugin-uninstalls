<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('civist');
delete_site_option('civist');
delete_option('Civist');
delete_site_option('Civist');

