<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmds_pass');
delete_site_option('hmds_pass');
delete_option('hmds_mid');
delete_site_option('hmds_mid');

