<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fvhc_frontend_site_url');
delete_site_option('fvhc_frontend_site_url');

