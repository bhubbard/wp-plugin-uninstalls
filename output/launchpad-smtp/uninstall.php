<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('launchpad_wp_smtp_options');
delete_site_option('launchpad_wp_smtp_options');

