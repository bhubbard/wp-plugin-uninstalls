<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('splashing_access_token');
delete_site_option('splashing_access_token');

// Delete Transients
delete_transient('splashing_featured');
delete_site_transient('splashing_featured');
delete_transient('splashing_latest');
delete_site_transient('splashing_latest');

