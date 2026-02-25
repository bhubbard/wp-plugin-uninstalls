<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('selected_pages');
delete_site_option('selected_pages');
delete_option('lr_message');
delete_site_option('lr_message');
delete_option('lr_button');
delete_site_option('lr_button');
delete_option('login_restrictions_settings');
delete_site_option('login_restrictions_settings');

