<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('to_top_options');
delete_site_option('to_top_options');
delete_option('ctp_options');
delete_site_option('ctp_options');

