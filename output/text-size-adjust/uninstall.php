<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('text_size_adjust_settings');
delete_site_option('text_size_adjust_settings');
delete_option('global_text_size_settings');
delete_site_option('global_text_size_settings');

