<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbps_popup_front_selection');
delete_site_option('wbps_popup_front_selection');
delete_option('wbps_preview_front_settings_background_color');
delete_site_option('wbps_preview_front_settings_background_color');
delete_option('wbps_preview_front_settings_text_color');
delete_site_option('wbps_preview_front_settings_text_color');
delete_option('wbps_preview_front_settings_title');
delete_site_option('wbps_preview_front_settings_title');
delete_option('wbps_preview_close_settings_background_color');
delete_site_option('wbps_preview_close_settings_background_color');
delete_option('wbps_preview_close_settings_text_color');
delete_site_option('wbps_preview_close_settings_text_color');
delete_option('wbps_enable_purchase_alert');
delete_site_option('wbps_enable_purchase_alert');
delete_option('wbps_purchase_alert_title');
delete_site_option('wbps_purchase_alert_title');
delete_option('wbps_purchase_alert_content');
delete_site_option('wbps_purchase_alert_content');
delete_option('wbps_purchase_button_text');
delete_site_option('wbps_purchase_button_text');
delete_option('wbps_purchase_button_action');
delete_site_option('wbps_purchase_button_action');
delete_option('wbps_purchase_button_link');
delete_site_option('wbps_purchase_button_link');
delete_option('wbps_preview_feature_fullscreen');
delete_site_option('wbps_preview_feature_fullscreen');

