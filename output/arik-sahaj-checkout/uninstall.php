<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ariksac_activated');
delete_site_option('ariksac_activated');
delete_option('ariksac_version');
delete_site_option('ariksac_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ariksac_message_template');
delete_site_option('ariksac_message_template');
delete_option('ariksac_whatsapp_number');
delete_site_option('ariksac_whatsapp_number');
delete_option('ariksac_deactivated');
delete_site_option('ariksac_deactivated');
delete_option('ariksac_button_position');
delete_site_option('ariksac_button_position');
delete_option('ariksac_button_bg_color');
delete_site_option('ariksac_button_bg_color');
delete_option('ariksac_button_bg_hover_color');
delete_site_option('ariksac_button_bg_hover_color');
delete_option('ariksac_button_text_color');
delete_site_option('ariksac_button_text_color');
delete_option('ariksac_button_text_hover_color');
delete_site_option('ariksac_button_text_hover_color');
delete_option('ariksac_button_font_size');
delete_site_option('ariksac_button_font_size');
delete_option('ariksac_icon_size');
delete_site_option('ariksac_icon_size');
delete_option('ariksac_icon_gap');
delete_site_option('ariksac_icon_gap');
delete_option('ariksac_button_border_radius');
delete_site_option('ariksac_button_border_radius');
delete_option('ariksac_custom_whatsapp_icon');
delete_site_option('ariksac_custom_whatsapp_icon');
delete_option('ariksac_button_padding_top');
delete_site_option('ariksac_button_padding_top');
delete_option('ariksac_button_padding_right');
delete_site_option('ariksac_button_padding_right');
delete_option('ariksac_button_padding_bottom');
delete_site_option('ariksac_button_padding_bottom');
delete_option('ariksac_button_padding_left');
delete_site_option('ariksac_button_padding_left');
delete_option('ariksac_button_text');
delete_site_option('ariksac_button_text');
delete_option('ariksac_enable_for_variable');
delete_site_option('ariksac_enable_for_variable');
delete_option('ariksac_order_status');
delete_site_option('ariksac_order_status');

