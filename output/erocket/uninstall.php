<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('efp');
delete_site_option('efp');
delete_option('erocket');
delete_site_option('erocket');

