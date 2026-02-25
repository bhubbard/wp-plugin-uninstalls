<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpbp-switch');
delete_site_option('wpbp-switch');
delete_option('wpbp-shortcode');
delete_site_option('wpbp-shortcode');

