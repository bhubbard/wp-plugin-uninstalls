<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('potd_categories');
delete_site_option('potd_categories');
delete_option('potd_amount');
delete_site_option('potd_amount');
delete_option('potd_interval');
delete_site_option('potd_interval');

