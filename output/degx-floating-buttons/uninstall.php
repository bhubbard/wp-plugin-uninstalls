<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('degxfb_tooltip_color');
delete_site_option('degxfb_tooltip_color');
delete_option('degxfb_whatsapp_number');
delete_site_option('degxfb_whatsapp_number');
delete_option('degxfb_phone_number');
delete_site_option('degxfb_phone_number');
delete_option('degxfb_button_position');
delete_site_option('degxfb_button_position');
delete_option('degxfb_button_size');
delete_site_option('degxfb_button_size');
delete_option('degxfb_whatsapp_color');
delete_site_option('degxfb_whatsapp_color');
delete_option('degxfb_phone_color');
delete_site_option('degxfb_phone_color');
delete_option('degxfb_whatsapp_tooltip');
delete_site_option('degxfb_whatsapp_tooltip');
delete_option('degxfb_phone_tooltip');
delete_site_option('degxfb_phone_tooltip');

