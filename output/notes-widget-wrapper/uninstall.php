<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notes_widget_wrapper_defaults');
delete_site_option('notes_widget_wrapper_defaults');
delete_option('notes_widget_wrapper_default_shortcode_settings');
delete_site_option('notes_widget_wrapper_default_shortcode_settings');

