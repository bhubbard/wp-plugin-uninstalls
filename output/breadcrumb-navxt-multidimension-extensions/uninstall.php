<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bcn_options');
delete_site_option('bcn_options');
delete_option('site_name');
delete_site_option('site_name');

