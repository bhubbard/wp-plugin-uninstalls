<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slc_display_options');
delete_site_option('slc_display_options');
delete_option('slc_extra_options');
delete_site_option('slc_extra_options');

