<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('icbUtils');
delete_site_option('icbUtils');
delete_option('fs_lite_accounts');
delete_site_option('fs_lite_accounts');

