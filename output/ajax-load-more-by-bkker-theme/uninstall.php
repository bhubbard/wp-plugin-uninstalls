<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajax_load_more_by_bkker_theme_option_name');
delete_site_option('ajax_load_more_by_bkker_theme_option_name');

