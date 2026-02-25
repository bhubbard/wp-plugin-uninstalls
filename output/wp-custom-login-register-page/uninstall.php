<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('n_logo_link');
delete_site_option('n_logo_link');
delete_option('n_background_link');
delete_site_option('n_background_link');

