<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kontur_button_text');
delete_site_option('kontur_button_text');
delete_option('kontur_button_text_copied');
delete_site_option('kontur_button_text_copied');
delete_option('kontur_copy_code_button_color');
delete_site_option('kontur_copy_code_button_color');
delete_option('kontur_copy_code_button_background');
delete_site_option('kontur_copy_code_button_background');
delete_option('kontur_copy_button_logo');
delete_site_option('kontur_copy_button_logo');
delete_option('kontur_copy_button_use_logo');
delete_site_option('kontur_copy_button_use_logo');
delete_option('kontur_pre_background');
delete_site_option('kontur_pre_background');
delete_option('kontur_pre_text');
delete_site_option('kontur_pre_text');
delete_option('kontur_copy_button_class');
delete_site_option('kontur_copy_button_class');
delete_option('kontur_copy_text_safari');
delete_site_option('kontur_copy_text_safari');
delete_option('kontur_copy_text_other_browser');
delete_site_option('kontur_copy_text_other_browser');
delete_option('kontur_icon_background');
delete_site_option('kontur_icon_background');
delete_option('kontur_icon_color');
delete_site_option('kontur_icon_color');

