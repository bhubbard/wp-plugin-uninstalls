<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dgc_clock_select');
delete_site_option('dgc_clock_select');
delete_option('dgc_clock_shortcode');
delete_site_option('dgc_clock_shortcode');

