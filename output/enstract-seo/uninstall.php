<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enstractUserToken');
delete_site_option('enstractUserToken');
delete_option('site_url');
delete_site_option('site_url');

