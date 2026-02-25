<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_simple_spamcheck_key');
delete_site_option('wp_simple_spamcheck_key');

