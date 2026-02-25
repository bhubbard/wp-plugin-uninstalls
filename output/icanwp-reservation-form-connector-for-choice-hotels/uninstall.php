<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ch_reservation_input_choicehotels_url');
delete_site_option('ch_reservation_input_choicehotels_url');
delete_option('ch_reservation_select_style_option');
delete_site_option('ch_reservation_select_style_option');
delete_option('ch_reservation_shortcode_text_widget');
delete_site_option('ch_reservation_shortcode_text_widget');
delete_option('ch_reservation_check_disable_auto_checkout_select');
delete_site_option('ch_reservation_check_disable_auto_checkout_select');
delete_option('ch_reservation_check_load_jquery');
delete_site_option('ch_reservation_check_load_jquery');
delete_option('ch_reservation_check_load_jquery_datepicker');
delete_site_option('ch_reservation_check_load_jquery_datepicker');
delete_option('ch_reservation_check_load_jquery_spinner');
delete_site_option('ch_reservation_check_load_jquery_spinner');

