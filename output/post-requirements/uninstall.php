<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('require-thumbnail');
delete_site_option('require-thumbnail');
delete_option('require-tags');
delete_site_option('require-tags');

