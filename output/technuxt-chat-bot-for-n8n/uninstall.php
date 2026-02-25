<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tcbn_theme_color');
delete_site_option('tcbn_theme_color');
delete_option('tcbn_widget_position');
delete_site_option('tcbn_widget_position');
delete_option('tcbn_border_radius');
delete_site_option('tcbn_border_radius');
delete_option('tcbn_webhook_url');
delete_site_option('tcbn_webhook_url');

