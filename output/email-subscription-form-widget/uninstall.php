<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('api_field_data');
delete_site_option('api_field_data');
delete_option('widget_mailchimpwidget');
delete_site_option('widget_mailchimpwidget');

