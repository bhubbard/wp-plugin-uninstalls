<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('safelayout_header_footer_options_rate');
delete_site_option('safelayout_header_footer_options_rate');
delete_option('safelayout_header_footer_options');
delete_site_option('safelayout_header_footer_options');

