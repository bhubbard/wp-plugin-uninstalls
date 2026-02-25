<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_mobi');
delete_site_option('wp_mobi');
delete_option('wp_mobi_step');
delete_site_option('wp_mobi_step');

