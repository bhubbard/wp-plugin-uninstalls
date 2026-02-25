<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('HMYWSK_Degiskenler_ayarlar');
delete_site_option('HMYWSK_Degiskenler_ayarlar');
delete_option('HMYWSK_Degiskenler_sozlesme1');
delete_site_option('HMYWSK_Degiskenler_sozlesme1');
delete_option('HMYWSK_Degiskenler_sozlesme2');
delete_site_option('HMYWSK_Degiskenler_sozlesme2');
delete_option('HMYWSK_Degiskenler_sozlesme3');
delete_site_option('HMYWSK_Degiskenler_sozlesme3');

// Delete Transients
delete_transient('misha_upgrade_YOUR_PLUGIN_SLUG');
delete_site_transient('misha_upgrade_YOUR_PLUGIN_SLUG');

