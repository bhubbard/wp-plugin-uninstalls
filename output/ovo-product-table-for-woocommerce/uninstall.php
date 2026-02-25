<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avijovoselprd');
delete_site_option('avijovoselprd');
delete_option('avijovodesptfw');
delete_site_option('avijovodesptfw');

