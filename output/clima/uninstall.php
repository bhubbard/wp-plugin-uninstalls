<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('url_feed');
delete_site_option('url_feed');
delete_option('unidad');
delete_site_option('unidad');

