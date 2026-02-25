<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ugdw_uncommongood_widget_options');
delete_site_option('ugdw_uncommongood_widget_options');

