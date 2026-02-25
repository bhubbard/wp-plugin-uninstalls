<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smrpwa_app_name');
delete_site_option('smrpwa_app_name');
delete_option('smrpwa_app_short_name');
delete_site_option('smrpwa_app_short_name');
delete_option('smrpwa_app_theme_color');
delete_site_option('smrpwa_app_theme_color');
delete_option('smrpwa_app_bg_color');
delete_site_option('smrpwa_app_bg_color');
delete_option('smrpwa_app_icon_192');
delete_site_option('smrpwa_app_icon_192');
delete_option('smrpwa_app_icon_512');
delete_site_option('smrpwa_app_icon_512');
delete_option('smrpwa_button_text');
delete_site_option('smrpwa_button_text');
delete_option('smrpwa_button_bg_color');
delete_site_option('smrpwa_button_bg_color');
delete_option('smrpwa_button_text_color');
delete_site_option('smrpwa_button_text_color');
delete_option('smrpwa_pos_vertical');
delete_site_option('smrpwa_pos_vertical');
delete_option('smrpwa_pos_horizontal');
delete_site_option('smrpwa_pos_horizontal');

