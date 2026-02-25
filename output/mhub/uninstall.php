<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mhub_do_activation_redirect');
delete_site_option('mhub_do_activation_redirect');
delete_option('mhub_wp_target_url');
delete_site_option('mhub_wp_target_url');

