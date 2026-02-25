<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('archive_widget_collapsed_with_css_style');
delete_site_option('archive_widget_collapsed_with_css_style');

