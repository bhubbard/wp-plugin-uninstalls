<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ttfp_options');
delete_site_option('ttfp_options');
delete_option('ttfp_selected_tags');
delete_site_option('ttfp_selected_tags');

