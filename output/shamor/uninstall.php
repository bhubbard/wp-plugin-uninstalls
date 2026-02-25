<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shamor_display_template');
delete_site_option('shamor_display_template');
delete_option('shamor_display_text');
delete_site_option('shamor_display_text');
delete_option('shamor_start_time');
delete_site_option('shamor_start_time');
delete_option('shamor_end_time');
delete_site_option('shamor_end_time');
delete_option('shamor_cache_status');
delete_site_option('shamor_cache_status');

