<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ftb_widget_token');
delete_site_option('ftb_widget_token');
delete_option('ftb_widget_id');
delete_site_option('ftb_widget_id');

