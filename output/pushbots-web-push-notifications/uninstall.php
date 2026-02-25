<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pb_application_id');
delete_site_option('pb_application_id');
delete_option('pb_application_secret');
delete_site_option('pb_application_secret');
delete_option('pb_website_url');
delete_site_option('pb_website_url');
delete_option('pb_safari_push_id');
delete_site_option('pb_safari_push_id');
delete_option('pb_enable_welcome_message');
delete_site_option('pb_enable_welcome_message');
delete_option('pb_welcome_title');
delete_site_option('pb_welcome_title');
delete_option('pb_welcome_message');
delete_site_option('pb_welcome_message');

