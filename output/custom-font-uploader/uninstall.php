<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfup-general-settings');
delete_site_option('cfup-general-settings');
delete_option('custom-font-uploader-settings');
delete_site_option('custom-font-uploader-settings');
delete_option('google-font-uploader-settings');
delete_site_option('google-font-uploader-settings');
delete_option('cfup-support');
delete_site_option('cfup-support');
delete_option('font_file_name');
delete_site_option('font_file_name');
delete_option('cfu_general_settings');
delete_site_option('cfu_general_settings');
delete_option('cfupgooglefonts_data');
delete_site_option('cfupgooglefonts_data');
delete_option('cfu_apikey_verified');
delete_site_option('cfu_apikey_verified');
delete_option('googlefont_file_name');
delete_site_option('googlefont_file_name');

// Delete Transients
delete_transient('_cfu_is_new_install');
delete_site_transient('_cfu_is_new_install');

