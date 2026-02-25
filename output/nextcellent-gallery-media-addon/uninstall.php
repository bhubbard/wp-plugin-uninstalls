<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ngg_options');
delete_site_option('ngg_options');

// Delete Transients
delete_transient('dirsize_cache');
delete_site_transient('dirsize_cache');

