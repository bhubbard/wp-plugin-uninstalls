<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('goftino_widget_type');
delete_site_option('goftino_widget_type');
delete_option('goftino_send_userdata');
delete_site_option('goftino_send_userdata');
delete_option('goftino_widget_id');
delete_site_option('goftino_widget_id');

// Delete Transients
delete_transient('error_goftino');
delete_site_transient('error_goftino');

