#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dkpdf_installed_version'
wp option delete 'dkpdf_pdfbutton_text'
wp option delete 'dkpdf_selected_template'
wp option delete 'dkpdf_font_downloader'
wp option delete 'dkpdf_core_fonts_installed'
wp option delete 'dkpdf_custom_fonts'
wp option delete 'dkpdf_custom_fonts_backup_v1'
wp option delete 'dkpdf_default_font'
wp option delete 'dkpdf_pdfbutton_post_types'
wp option delete 'dkpdf_button_visibility_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dkpdf_custom_fields_%'"
wp option delete 'dkpdf_pdfbutton_position'
wp option delete 'dkpdf_pdfbutton_taxonomies'
wp option delete 'dkpdf_wc_archive_posts_per_page'
wp option delete 'dkpdf_taxonomy_posts_per_page'
wp option delete 'dkpdf_font_size'
wp option delete 'dkpdf_page_orientation'
wp option delete 'dkpdf_margin_left'
wp option delete 'dkpdf_margin_right'
wp option delete 'dkpdf_margin_top'
wp option delete 'dkpdf_margin_bottom'
wp option delete 'dkpdf_margin_header'
wp option delete 'dkpdf_auto_language_detection'
wp option delete 'dkpdf_enable_rtl'
wp option delete 'dkpdf_enable_protection'
wp option delete 'dkpdf_grant_permissions'
wp option delete 'dkpdf_keep_columns'
wp option delete 'dkpdf_pdfbutton_action'
wp option delete 'dkpdf_load_theme_css'
wp option delete 'dkpdf_pdf_custom_css'
wp option delete 'dkpdf_wc_archive_display'
wp option delete 'dkpdf_wc_archive_layout'
wp option delete 'dkpdf_taxonomy_layout'
wp option delete 'dkpdf_taxonomy_display'
wp option delete 'dkpdf_pdfbutton_align'
wp option delete 'dkpdf_pdf_footer_text'
wp option delete 'dkpdf_pdf_footer_show_title'
wp option delete 'dkpdf_pdf_footer_show_pagination'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'dkpdf_pdf_header_image'
wp option delete 'dkpdf_pdf_header_show_title'
wp option delete 'dkpdf_pdf_header_show_pagination'
wp option delete 'dkpdf_post_display'
wp option delete 'dkpdf_wc_product_display'
wp option delete 'dkpdf_print_wp_head'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hide_pdfbutton'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hide_pdfbutton'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hide_pdfbutton'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hide_pdfbutton'"
