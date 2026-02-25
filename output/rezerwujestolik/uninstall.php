<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rezerwujestolik_places_array');
delete_site_option('rezerwujestolik_places_array');
delete_option('rezerwujestolik_api_token');
delete_site_option('rezerwujestolik_api_token');
delete_option('rezerwujestolik_button_bg_color');
delete_site_option('rezerwujestolik_button_bg_color');
delete_option('rezerwujestolik_button_text_color');
delete_site_option('rezerwujestolik_button_text_color');
delete_option('rezerwujestolik_button_border_color');
delete_site_option('rezerwujestolik_button_border_color');
delete_option('rezerwujestolik_button_text');
delete_site_option('rezerwujestolik_button_text');
delete_option('rezerwujestolik_lang');
delete_site_option('rezerwujestolik_lang');
delete_option('rezerwujestolik_place_id');
delete_site_option('rezerwujestolik_place_id');
delete_option('rezerwujestolik_accent_color');
delete_site_option('rezerwujestolik_accent_color');
delete_option('rezerwujestolik_log');
delete_site_option('rezerwujestolik_log');
delete_option('rezerwujestolik_url');
delete_site_option('rezerwujestolik_url');

