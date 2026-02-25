<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pageviews_config');
delete_site_option('pageviews_config');

// Delete Transients
delete_transient('pageviews:rest-auth');
delete_site_transient('pageviews:rest-auth');

