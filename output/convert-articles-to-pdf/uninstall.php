<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('convert_to_pdf_paper_size');
delete_site_option('convert_to_pdf_paper_size');
delete_option('convert_to_pdf_orientation');
delete_site_option('convert_to_pdf_orientation');
delete_option('convert_to_pdf_enable');
delete_site_option('convert_to_pdf_enable');
delete_option('convert_to_pdf_position');
delete_site_option('convert_to_pdf_position');
delete_option('convert_to_pdf_include_image');
delete_site_option('convert_to_pdf_include_image');
delete_option('convert_to_pdf_custom_css');
delete_site_option('convert_to_pdf_custom_css');
delete_option('convert_to_pdf_button_css');
delete_site_option('convert_to_pdf_button_css');
delete_option('convert_to_pdf_button_label');
delete_site_option('convert_to_pdf_button_label');

