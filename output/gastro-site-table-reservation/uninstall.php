<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gastrosite_reservation_id');
delete_site_option('gastrosite_reservation_id');
delete_option('gastrosite_reservation_language');
delete_site_option('gastrosite_reservation_language');
delete_option('gastrosite_reservation_show_header');
delete_site_option('gastrosite_reservation_show_header');
delete_option('gastrosite_reservation_color');
delete_site_option('gastrosite_reservation_color');
delete_option('gastrosite_reservation_button_text');
delete_site_option('gastrosite_reservation_button_text');
delete_option('gastrosite_reservation_button_size');
delete_site_option('gastrosite_reservation_button_size');
delete_option('gastrosite_reservation_button_color');
delete_site_option('gastrosite_reservation_button_color');
delete_option('gastrosite_reservation_z_index');
delete_site_option('gastrosite_reservation_z_index');
delete_option('gastrosite_reservation_button_position');
delete_site_option('gastrosite_reservation_button_position');

