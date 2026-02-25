<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ptmgh_wp_recaptcha_options');
delete_site_option('ptmgh_wp_recaptcha_options');

