<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bin_white');
delete_site_option('bin_white');
delete_option('bin_shrink');
delete_site_option('bin_shrink');
delete_option('bin_code');
delete_site_option('bin_code');

