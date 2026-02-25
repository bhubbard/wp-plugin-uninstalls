<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharedaddy_disable_resources');
delete_site_option('sharedaddy_disable_resources');

// Delete Transients
delete_transient('jpssp-feedly-api');
delete_site_transient('jpssp-feedly-api');

