<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpza_ec__shortcode_output');
delete_site_option('wpza_ec__shortcode_output');

