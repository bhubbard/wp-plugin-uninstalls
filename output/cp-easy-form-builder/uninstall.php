<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'installed_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('CP_EFB_LOAD_SCRIPTS');
delete_site_option('CP_EFB_LOAD_SCRIPTS');
delete_option('form_structure');
delete_site_option('form_structure');
delete_option('fp_from_email');
delete_site_option('fp_from_email');
delete_option('fp_destination_emails');
delete_site_option('fp_destination_emails');
delete_option('fp_subject');
delete_site_option('fp_subject');
delete_option('fp_inc_additional_info');
delete_site_option('fp_inc_additional_info');
delete_option('fp_return_page');
delete_site_option('fp_return_page');
delete_option('fp_message');
delete_site_option('fp_message');
delete_option('cu_enable_copy_to_user');
delete_site_option('cu_enable_copy_to_user');
delete_option('cu_user_email_field');
delete_site_option('cu_user_email_field');
delete_option('cu_subject');
delete_site_option('cu_subject');
delete_option('cu_message');
delete_site_option('cu_message');
delete_option('vs_use_validation');
delete_site_option('vs_use_validation');
delete_option('vs_text_is_required');
delete_site_option('vs_text_is_required');
delete_option('vs_text_is_email');
delete_site_option('vs_text_is_email');
delete_option('vs_text_datemmddyyyy');
delete_site_option('vs_text_datemmddyyyy');
delete_option('vs_text_dateddmmyyyy');
delete_site_option('vs_text_dateddmmyyyy');
delete_option('vs_text_number');
delete_site_option('vs_text_number');
delete_option('vs_text_digits');
delete_site_option('vs_text_digits');
delete_option('vs_text_max');
delete_site_option('vs_text_max');
delete_option('vs_text_min');
delete_site_option('vs_text_min');
delete_option('vs_text_submitbtn');
delete_site_option('vs_text_submitbtn');
delete_option('vs_text_previousbtn');
delete_site_option('vs_text_previousbtn');
delete_option('vs_text_nextbtn');
delete_site_option('vs_text_nextbtn');
delete_option('cv_enable_captcha');
delete_site_option('cv_enable_captcha');
delete_option('cv_width');
delete_site_option('cv_width');
delete_option('cv_height');
delete_site_option('cv_height');
delete_option('cv_chars');
delete_site_option('cv_chars');
delete_option('cv_font');
delete_site_option('cv_font');
delete_option('cv_min_font_size');
delete_site_option('cv_min_font_size');
delete_option('cv_max_font_size');
delete_site_option('cv_max_font_size');
delete_option('cv_noise');
delete_site_option('cv_noise');
delete_option('cv_noise_length');
delete_site_option('cv_noise_length');
delete_option('cv_background');
delete_site_option('cv_background');
delete_option('cv_border');
delete_site_option('cv_border');
delete_option('cv_text_enter_valid_captcha');
delete_site_option('cv_text_enter_valid_captcha');
delete_option('cp_easyform_data');
delete_site_option('cp_easyform_data');
delete_option('autoptimize_js_exclude');
delete_site_option('autoptimize_js_exclude');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_codepeople_promote_banner_%', '_site_transient_codepeople_promote_banner_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

