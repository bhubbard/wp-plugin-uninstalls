<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ttsengine_button_location_bottom');
delete_site_option('ttsengine_button_location_bottom');
delete_option('ttsengine_display_link');
delete_site_option('ttsengine_display_link');
delete_option('ttsengine_link_location_bottom');
delete_site_option('ttsengine_link_location_bottom');
delete_option('ttsengine_language');
delete_site_option('ttsengine_language');
delete_option('ttsengine_version');
delete_site_option('ttsengine_version');

