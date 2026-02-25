<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ur4f_options');
delete_site_option('ur4f_options');
delete_option('ur4f_version');
delete_site_option('ur4f_version');

