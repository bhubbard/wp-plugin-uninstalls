<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ev_purge');
delete_site_option('ev_purge');
delete_option('ev_fields_counter');
delete_site_option('ev_fields_counter');
delete_option('ev_fields_counter_calculator');
delete_site_option('ev_fields_counter_calculator');
delete_option('widget_formviewer');
delete_site_option('widget_formviewer');

