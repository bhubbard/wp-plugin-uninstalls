<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('reviewmojo_stats');
delete_site_option('reviewmojo_stats');
delete_option('reviewmojo_settings');
delete_site_option('reviewmojo_settings');
delete_option('reviewmojo_funnel_page_id');
delete_site_option('reviewmojo_funnel_page_id');

