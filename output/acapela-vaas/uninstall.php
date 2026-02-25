<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('key_field');
delete_site_option('key_field');
delete_option('login_field');
delete_site_option('login_field');
delete_option('app_field');
delete_site_option('app_field');
delete_option('password_field');
delete_site_option('password_field');
delete_option('default_voice_field');
delete_site_option('default_voice_field');
delete_option('selector_field');
delete_site_option('selector_field');
delete_option('exclude_selector_field');
delete_site_option('exclude_selector_field');

