<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hclbe_dismiss');
delete_site_option('hclbe_dismiss');
delete_option('hclbe-top-notice');
delete_site_option('hclbe-top-notice');

