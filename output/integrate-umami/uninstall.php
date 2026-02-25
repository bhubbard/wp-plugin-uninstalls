<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('integrate_umami_options');
delete_site_option('integrate_umami_options');
delete_option('umami_options');
delete_site_option('umami_options');

