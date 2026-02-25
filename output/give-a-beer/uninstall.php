<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xGABValues');
delete_site_option('xGABValues');
delete_option('xGABIPS');
delete_site_option('xGABIPS');

