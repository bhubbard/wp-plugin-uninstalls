<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tuxrwc_gutter');
delete_site_option('tuxrwc_gutter');
delete_option('tuxrwc_collapse');
delete_site_option('tuxrwc_collapse');

