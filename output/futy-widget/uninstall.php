<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('futy_widget_code');
delete_site_option('futy_widget_code');
delete_option('futy_widget_visibility');
delete_site_option('futy_widget_visibility');
delete_option('futy_new_script');
delete_site_option('futy_new_script');

