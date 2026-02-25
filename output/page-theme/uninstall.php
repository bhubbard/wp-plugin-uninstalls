<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pageTheme_options');
delete_site_option('pageTheme_options');
delete_option('pageTheme_disp_options');
delete_site_option('pageTheme_disp_options');

