<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_scroll_page_to_top_settings');
delete_site_option('_scroll_page_to_top_settings');

