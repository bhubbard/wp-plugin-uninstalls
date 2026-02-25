<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('informvisitors_options');
delete_site_option('informvisitors_options');
delete_option('informvisitors_uname');
delete_site_option('informvisitors_uname');

