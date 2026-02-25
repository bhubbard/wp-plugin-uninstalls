<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatfromai_widget_id');
delete_site_option('chatfromai_widget_id');
delete_option('chatfromai_show_branding');
delete_site_option('chatfromai_show_branding');
delete_option('chatfromai_widget_data');
delete_site_option('chatfromai_widget_data');

