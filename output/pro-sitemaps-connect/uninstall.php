<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pro_sitemaps_connect_options');
delete_site_option('pro_sitemaps_connect_options');

