<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpw_options');
delete_site_option('fpw_options');

// Delete Transients
delete_transient('fpw_widget_select_list');
delete_site_transient('fpw_widget_select_list');

