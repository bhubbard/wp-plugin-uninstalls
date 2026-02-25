<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wilapp_options');
delete_site_option('wilapp_options');

// Delete Transients
delete_transient('wilapp_query_professional');
delete_site_transient('wilapp_query_professional');

