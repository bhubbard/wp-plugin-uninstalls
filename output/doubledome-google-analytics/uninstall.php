<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ga_dd_id');
delete_site_option('ga_dd_id');
delete_option('ga_dd_code');
delete_site_option('ga_dd_code');

