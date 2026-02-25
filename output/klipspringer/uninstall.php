<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssklip_settings_accessibility');
delete_site_option('ssklip_settings_accessibility');
delete_option('ssklip_settings_appearance');
delete_site_option('ssklip_settings_appearance');
delete_option('ssklip_settings_closebutton');
delete_site_option('ssklip_settings_closebutton');
delete_option('ssklip_settings_customstyles');
delete_site_option('ssklip_settings_customstyles');
delete_option('ssklip_settings');
delete_site_option('ssklip_settings');

