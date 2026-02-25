<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tv_coming_soon');
delete_site_option('tv_coming_soon');

// Delete Transients
delete_transient('show_coming_soon_notice');
delete_site_transient('show_coming_soon_notice');

