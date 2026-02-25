<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpfap_hide');
delete_site_option('wpfap_hide');
delete_option('wpfap_width');
delete_site_option('wpfap_width');

