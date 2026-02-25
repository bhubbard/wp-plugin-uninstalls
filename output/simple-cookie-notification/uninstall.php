<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ba_cookie_link');
delete_site_option('ba_cookie_link');
delete_option('ba_privacy_link');
delete_site_option('ba_privacy_link');
delete_option('ba_cookie_text');
delete_site_option('ba_cookie_text');
delete_option('ba_privacy_text');
delete_site_option('ba_privacy_text');
delete_option('ba_set_cookie_on_interaction');
delete_site_option('ba_set_cookie_on_interaction');
delete_option('ba_admin_bar_text');
delete_site_option('ba_admin_bar_text');
delete_option('ba_button_color');
delete_site_option('ba_button_color');
delete_option('ba_button_text');
delete_site_option('ba_button_text');
delete_option('ba_json');
delete_site_option('ba_json');

