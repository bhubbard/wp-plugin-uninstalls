<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('welcome_popup_settings');
delete_site_option('welcome_popup_settings');
delete_option('welcome_popup_activation_date');
delete_site_option('welcome_popup_activation_date');

