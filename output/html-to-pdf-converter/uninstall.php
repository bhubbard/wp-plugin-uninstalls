<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('html2pdf_api_key');
delete_site_option('html2pdf_api_key');
delete_option('html2pdf_format');
delete_site_option('html2pdf_format');
delete_option('html2pdf_landscape');
delete_site_option('html2pdf_landscape');
delete_option('html2pdf_margin_top');
delete_site_option('html2pdf_margin_top');
delete_option('html2pdf_margin_right');
delete_site_option('html2pdf_margin_right');
delete_option('html2pdf_margin_bottom');
delete_site_option('html2pdf_margin_bottom');
delete_option('html2pdf_margin_left');
delete_site_option('html2pdf_margin_left');
delete_option('html2pdf_width');
delete_site_option('html2pdf_width');
delete_option('html2pdf_height');
delete_site_option('html2pdf_height');

