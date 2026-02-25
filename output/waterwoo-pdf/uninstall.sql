-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wwpdf_global', 'wwpdf_files', 'wwpdf_files_v4', 'dlm_stamper_global', 'dlm_stamper_files', 'wwpdf_footer_input_premium', 'dlm_stamper_stamp', 'wwpdf_margin_left_right', 'wwpdf_font_premium', 'wwpdf_footer_size_premium', 'wwpdf_footer_color_premium', 'wwpdf_footer_finetune_Y_premium', 'wwpdf_password', 'wwpdf_disable_printing', 'wwpdf_disable_mods', 'wwpdf_disable_copy', 'wwpdf_disable_annot', 'dlm_stamper_margin_lr', 'dlm_stamper_font', 'dlm_stamper_size', 'dlm_stamper_color', 'dlm_stamper_finetune_Y', 'dlm_stamper_pwd', 'dlm_stamper_dis_printing', 'dlm_stamper_dis_mods', 'dlm_stamper_dis_copy', 'dlm_stamper_dis_annot', 'eddimark_margin_left_right', 'woocommerce_file_download_method', 'pdfink_attribution', 'wwpdf_delete_checkbox', 'dlm_stamper_lnt', 'wwpdf_donate_dismiss_08-28', 'wwpdf_enable', 'wwpdf_footer_input', 'wwpdf_font', 'wwpdf_footer_size', 'wwpdf_footer_color', 'wwpdf_footer_y', 'wwpdf_debug_mode', 'eddimark_textarea_fixed', 'edd_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', 'wwpdf_ignore_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', 'wwpdf_ignore_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', 'wwpdf_ignore_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', 'wwpdf_ignore_notice');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wwpdf_ignore_notice%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%';

