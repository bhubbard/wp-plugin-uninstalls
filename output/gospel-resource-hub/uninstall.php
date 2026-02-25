<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gospelrh');
delete_site_option('gospelrh');

// Delete Transients
delete_transient('grh_widget_filters_langs');
delete_site_transient('grh_widget_filters_langs');

