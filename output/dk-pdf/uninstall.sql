-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dkpdf_installed_version', 'dkpdf_pdfbutton_text', 'dkpdf_selected_template', 'dkpdf_font_downloader', 'dkpdf_core_fonts_installed', 'dkpdf_custom_fonts', 'dkpdf_custom_fonts_backup_v1', 'dkpdf_default_font', 'dkpdf_pdfbutton_post_types', 'dkpdf_button_visibility_roles', 'dkpdf_pdfbutton_position', 'dkpdf_pdfbutton_taxonomies', 'dkpdf_wc_archive_posts_per_page', 'dkpdf_taxonomy_posts_per_page', 'dkpdf_font_size', 'dkpdf_page_orientation', 'dkpdf_margin_left', 'dkpdf_margin_right', 'dkpdf_margin_top', 'dkpdf_margin_bottom', 'dkpdf_margin_header', 'dkpdf_auto_language_detection', 'dkpdf_enable_rtl', 'dkpdf_enable_protection', 'dkpdf_grant_permissions', 'dkpdf_keep_columns', 'dkpdf_pdfbutton_action', 'dkpdf_load_theme_css', 'dkpdf_pdf_custom_css', 'dkpdf_wc_archive_display', 'dkpdf_wc_archive_layout', 'dkpdf_taxonomy_layout', 'dkpdf_taxonomy_display', 'dkpdf_pdfbutton_align', 'dkpdf_pdf_footer_text', 'dkpdf_pdf_footer_show_title', 'dkpdf_pdf_footer_show_pagination', 'woocommerce_shop_page_id', 'dkpdf_pdf_header_image', 'dkpdf_pdf_header_show_title', 'dkpdf_pdf_header_show_pagination', 'dkpdf_post_display', 'dkpdf_wc_product_display', 'dkpdf_print_wp_head');
DELETE FROM wp_options WHERE option_name LIKE 'dkpdf_custom_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_hide_pdfbutton');
DELETE FROM wp_usermeta WHERE meta_key IN ('_hide_pdfbutton');
DELETE FROM wp_termmeta WHERE meta_key IN ('_hide_pdfbutton');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_hide_pdfbutton');

