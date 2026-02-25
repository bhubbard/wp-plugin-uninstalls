<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('twgWrapperAdminOptions');
delete_site_option('twgWrapperAdminOptions');

