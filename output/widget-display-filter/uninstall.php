<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_display_filter');
delete_site_option('widget_display_filter');

// Delete Transients
delete_transient('widget_display_filter_notice');
delete_site_transient('widget_display_filter_notice');
delete_transient('widget_display_filter_tab');
delete_site_transient('widget_display_filter_tab');

