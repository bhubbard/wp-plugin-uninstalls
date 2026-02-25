<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbp_root_slug');
delete_site_option('_bbp_root_slug');
delete_option('_bbp_search_slug');
delete_site_option('_bbp_search_slug');

