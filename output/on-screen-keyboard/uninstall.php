<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('on_screen_keyboard_version_field');
delete_site_option('on_screen_keyboard_version_field');
delete_option('on_screen_keyboard_ppposts_field');
delete_site_option('on_screen_keyboard_ppposts_field');

