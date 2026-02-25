<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ittc_inactive_title');
delete_site_option('ittc_inactive_title');
delete_option('ittc_timeout');
delete_site_option('ittc_timeout');

