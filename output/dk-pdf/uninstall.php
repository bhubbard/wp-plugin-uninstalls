<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dkpdf_installed_version');
delete_site_option('dkpdf_installed_version');
delete_option('dkpdf_pdfbutton_text');
delete_site_option('dkpdf_pdfbutton_text');
delete_option('dkpdf_selected_template');
delete_site_option('dkpdf_selected_template');
delete_option('dkpdf_font_downloader');
delete_site_option('dkpdf_font_downloader');
delete_option('dkpdf_core_fonts_installed');
delete_site_option('dkpdf_core_fonts_installed');
delete_option('dkpdf_custom_fonts');
delete_site_option('dkpdf_custom_fonts');
delete_option('dkpdf_custom_fonts_backup_v1');
delete_site_option('dkpdf_custom_fonts_backup_v1');
delete_option('dkpdf_default_font');
delete_site_option('dkpdf_default_font');
delete_option('dkpdf_pdfbutton_post_types');
delete_site_option('dkpdf_pdfbutton_post_types');
delete_option('dkpdf_button_visibility_roles');
delete_site_option('dkpdf_button_visibility_roles');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dkpdf_custom_fields_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('dkpdf_pdfbutton_position');
delete_site_option('dkpdf_pdfbutton_position');
delete_option('dkpdf_pdfbutton_taxonomies');
delete_site_option('dkpdf_pdfbutton_taxonomies');
delete_option('dkpdf_wc_archive_posts_per_page');
delete_site_option('dkpdf_wc_archive_posts_per_page');
delete_option('dkpdf_taxonomy_posts_per_page');
delete_site_option('dkpdf_taxonomy_posts_per_page');
delete_option('dkpdf_font_size');
delete_site_option('dkpdf_font_size');
delete_option('dkpdf_page_orientation');
delete_site_option('dkpdf_page_orientation');
delete_option('dkpdf_margin_left');
delete_site_option('dkpdf_margin_left');
delete_option('dkpdf_margin_right');
delete_site_option('dkpdf_margin_right');
delete_option('dkpdf_margin_top');
delete_site_option('dkpdf_margin_top');
delete_option('dkpdf_margin_bottom');
delete_site_option('dkpdf_margin_bottom');
delete_option('dkpdf_margin_header');
delete_site_option('dkpdf_margin_header');
delete_option('dkpdf_auto_language_detection');
delete_site_option('dkpdf_auto_language_detection');
delete_option('dkpdf_enable_rtl');
delete_site_option('dkpdf_enable_rtl');
delete_option('dkpdf_enable_protection');
delete_site_option('dkpdf_enable_protection');
delete_option('dkpdf_grant_permissions');
delete_site_option('dkpdf_grant_permissions');
delete_option('dkpdf_keep_columns');
delete_site_option('dkpdf_keep_columns');
delete_option('dkpdf_pdfbutton_action');
delete_site_option('dkpdf_pdfbutton_action');
delete_option('dkpdf_load_theme_css');
delete_site_option('dkpdf_load_theme_css');
delete_option('dkpdf_pdf_custom_css');
delete_site_option('dkpdf_pdf_custom_css');
delete_option('dkpdf_wc_archive_display');
delete_site_option('dkpdf_wc_archive_display');
delete_option('dkpdf_wc_archive_layout');
delete_site_option('dkpdf_wc_archive_layout');
delete_option('dkpdf_taxonomy_layout');
delete_site_option('dkpdf_taxonomy_layout');
delete_option('dkpdf_taxonomy_display');
delete_site_option('dkpdf_taxonomy_display');
delete_option('dkpdf_pdfbutton_align');
delete_site_option('dkpdf_pdfbutton_align');
delete_option('dkpdf_pdf_footer_text');
delete_site_option('dkpdf_pdf_footer_text');
delete_option('dkpdf_pdf_footer_show_title');
delete_site_option('dkpdf_pdf_footer_show_title');
delete_option('dkpdf_pdf_footer_show_pagination');
delete_site_option('dkpdf_pdf_footer_show_pagination');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('dkpdf_pdf_header_image');
delete_site_option('dkpdf_pdf_header_image');
delete_option('dkpdf_pdf_header_show_title');
delete_site_option('dkpdf_pdf_header_show_title');
delete_option('dkpdf_pdf_header_show_pagination');
delete_site_option('dkpdf_pdf_header_show_pagination');
delete_option('dkpdf_post_display');
delete_site_option('dkpdf_post_display');
delete_option('dkpdf_wc_product_display');
delete_site_option('dkpdf_wc_product_display');
delete_option('dkpdf_print_wp_head');
delete_site_option('dkpdf_print_wp_head');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_hide_pdfbutton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_hide_pdfbutton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_hide_pdfbutton' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_hide_pdfbutton' ) );

