<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rh4a_options');
delete_site_option('rh4a_options');
delete_option('rh4a_version');
delete_site_option('rh4a_version');

