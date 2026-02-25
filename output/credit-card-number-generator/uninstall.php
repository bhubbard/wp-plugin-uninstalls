<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('CCNG_DUMMY_CARD_status');
delete_site_option('CCNG_DUMMY_CARD_status');
delete_option('CCNG_generate_btn_link_text');
delete_site_option('CCNG_generate_btn_link_text');
delete_option('CCNG_generate_btn_txt_color');
delete_site_option('CCNG_generate_btn_txt_color');
delete_option('CCNG_generate_btn_link_color');
delete_site_option('CCNG_generate_btn_link_color');
delete_option('CCNG_copy_btn_link_text');
delete_site_option('CCNG_copy_btn_link_text');
delete_option('CCNG_cpy_btn_txt_color');
delete_site_option('CCNG_cpy_btn_txt_color');
delete_option('CCNG_copy_btn_link_color');
delete_site_option('CCNG_copy_btn_link_color');
delete_option('CCNG_validate_input_ph');
delete_site_option('CCNG_validate_input_ph');
delete_option('CCNG_validate_btn_txt');
delete_site_option('CCNG_validate_btn_txt');
delete_option('CCNG_validate_btn_color');
delete_site_option('CCNG_validate_btn_color');
delete_option('CCNG_validate_btn_bgcolor');
delete_site_option('CCNG_validate_btn_bgcolor');
delete_option('ccng_activation_date');
delete_site_option('ccng_activation_date');

