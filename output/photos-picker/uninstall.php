<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('google_photos_picker_setting_browser_key');
delete_site_option('google_photos_picker_setting_browser_key');
delete_option('google_photos_picker_setting_client_id');
delete_site_option('google_photos_picker_setting_client_id');
delete_option('google_photos_picker_setting_img_tag_type');
delete_site_option('google_photos_picker_setting_img_tag_type');

