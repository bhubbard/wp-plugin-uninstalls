<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('content-sort-list');
delete_site_option('content-sort-list');
delete_option('content-sort');
delete_site_option('content-sort');

