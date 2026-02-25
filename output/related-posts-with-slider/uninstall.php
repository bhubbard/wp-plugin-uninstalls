<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tmrp_enable');
delete_site_option('tmrp_enable');
delete_option('tmrp_heading');
delete_site_option('tmrp_heading');

