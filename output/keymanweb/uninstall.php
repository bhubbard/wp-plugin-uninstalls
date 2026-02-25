<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keymanwebheader');
delete_site_option('keymanwebheader');
delete_option('keymanwebdashboard');
delete_site_option('keymanwebdashboard');
delete_option('keymanwebcomments');
delete_site_option('keymanwebcomments');

