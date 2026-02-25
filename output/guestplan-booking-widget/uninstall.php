<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guestplan_api_key');
delete_site_option('guestplan_api_key');
delete_option('guestplan_newsletter_hide');
delete_site_option('guestplan_newsletter_hide');
delete_option('guestplan_newsletter_default_optin');
delete_site_option('guestplan_newsletter_default_optin');
delete_option('guestplan_widget_language');
delete_site_option('guestplan_widget_language');
delete_option('guestplan_auto_open');
delete_site_option('guestplan_auto_open');
delete_option('guestplan_hide_btn');
delete_site_option('guestplan_hide_btn');
delete_option('guestplan_show_specific_pages');
delete_site_option('guestplan_show_specific_pages');
delete_option('guestplan_specific_pages_list');
delete_site_option('guestplan_specific_pages_list');

