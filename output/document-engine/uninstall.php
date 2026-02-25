<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('document_engine_queue_flush_rewrite_rules');
delete_site_option('document_engine_queue_flush_rewrite_rules');
delete_option('document_engine_pdf_button_text');
delete_site_option('document_engine_pdf_button_text');
delete_option('document_engine_pdf_post_type');
delete_site_option('document_engine_pdf_post_type');
delete_option('document_engine_pdf_button_action');
delete_site_option('document_engine_pdf_button_action');
delete_option('document_engine_pdf_button_position');
delete_site_option('document_engine_pdf_button_position');
delete_option('document_engine_pdf_button_alignment');
delete_site_option('document_engine_pdf_button_alignment');
delete_option('document_engine_pdf_header_logo');
delete_site_option('document_engine_pdf_header_logo');
delete_option('document_engine_pdf_header_show_post_title');
delete_site_option('document_engine_pdf_header_show_post_title');
delete_option('document_engine_pdf_header_show_pagination');
delete_site_option('document_engine_pdf_header_show_pagination');
delete_option('document_engine_pdf_footer_text');
delete_site_option('document_engine_pdf_footer_text');
delete_option('document_engine_pdf_footer_show_post_title');
delete_site_option('document_engine_pdf_footer_show_post_title');
delete_option('document_engine_pdf_footer_show_pagination');
delete_site_option('document_engine_pdf_footer_show_pagination');
delete_option('document_engine_pdf_page_orientation');
delete_site_option('document_engine_pdf_page_orientation');
delete_option('document_engine_pdf_page_font_size');
delete_site_option('document_engine_pdf_page_font_size');
delete_option('document_engine_pdf_page_margin_left');
delete_site_option('document_engine_pdf_page_margin_left');
delete_option('document_engine_pdf_page_margin_right');
delete_site_option('document_engine_pdf_page_margin_right');
delete_option('document_engine_pdf_page_margin_top');
delete_site_option('document_engine_pdf_page_margin_top');
delete_option('document_engine_pdf_page_margin_bottom');
delete_site_option('document_engine_pdf_page_margin_bottom');
delete_option('document_engine_pdf_page_margin_header');
delete_site_option('document_engine_pdf_page_margin_header');
delete_option('document_engine_pdf_page_protected_permissions');
delete_site_option('document_engine_pdf_page_protected_permissions');
delete_option('document_engine_pdf_page_keep_columns');
delete_site_option('document_engine_pdf_page_keep_columns');
delete_option('document_engine_pdf_page_enable_protection');
delete_site_option('document_engine_pdf_page_enable_protection');
delete_option('document_engine_pdf_use_theme_style');
delete_site_option('document_engine_pdf_use_theme_style');
delete_option('document_engine_pdf_custom_css');
delete_site_option('document_engine_pdf_custom_css');
delete_option('document_engine_pdf_header_font_size');
delete_site_option('document_engine_pdf_header_font_size');
delete_option('document_engine_pdf_footer_font_size');
delete_site_option('document_engine_pdf_footer_font_size');

