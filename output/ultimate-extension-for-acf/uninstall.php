<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uefax_activated');
delete_site_option('uefax_activated');
delete_option('uefax_version');
delete_site_option('uefax_version');

