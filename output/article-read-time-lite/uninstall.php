<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('artl_progress_bar_settings');
delete_site_option('artl_progress_bar_settings');
delete_option('artl_settings');
delete_site_option('artl_settings');

