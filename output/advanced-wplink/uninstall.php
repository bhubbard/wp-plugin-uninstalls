<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nm-awl_version');
delete_site_option('nm-awl_version');
delete_option('nm-awl_options');
delete_site_option('nm-awl_options');
delete_option('vtlawl_options');
delete_site_option('vtlawl_options');

