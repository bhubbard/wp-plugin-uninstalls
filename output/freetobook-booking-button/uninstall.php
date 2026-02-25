<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftb_widget_key');
delete_site_option('ftb_widget_key');
delete_option('ftb_widget_style');
delete_site_option('ftb_widget_style');
delete_option('ftb_widget_button_url');
delete_site_option('ftb_widget_button_url');
delete_option('ftb_widget_button_id');
delete_site_option('ftb_widget_button_id');

