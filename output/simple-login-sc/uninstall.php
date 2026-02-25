<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slsc_logouttext');
delete_site_option('slsc_logouttext');
delete_option('slsc_username');
delete_site_option('slsc_username');
delete_option('slsc_password');
delete_site_option('slsc_password');
delete_option('slsc_button_text');
delete_site_option('slsc_button_text');
delete_option('slsc_welcome_text');
delete_site_option('slsc_welcome_text');

