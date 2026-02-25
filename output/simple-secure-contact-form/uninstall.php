<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lptw_contact_form_widget_options');
delete_site_option('lptw_contact_form_widget_options');

