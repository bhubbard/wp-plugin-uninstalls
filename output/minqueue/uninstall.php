<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minqueue_options');
delete_site_option('minqueue_options');
delete_option('minqueue_version');
delete_site_option('minqueue_version');

