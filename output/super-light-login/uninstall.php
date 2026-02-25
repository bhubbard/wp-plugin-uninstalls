<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('register_text_field');
delete_site_option('register_text_field');
delete_option('register_url_field');
delete_site_option('register_url_field');
delete_option('logo_settings_one');
delete_site_option('logo_settings_one');
delete_option('logo_settings_url');
delete_site_option('logo_settings_url');

