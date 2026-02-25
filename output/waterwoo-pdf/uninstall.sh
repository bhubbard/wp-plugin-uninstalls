#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wwpdf_global'
wp option delete 'wwpdf_files'
wp option delete 'wwpdf_files_v4'
wp option delete 'dlm_stamper_global'
wp option delete 'dlm_stamper_files'
wp option delete 'wwpdf_footer_input_premium'
wp option delete 'dlm_stamper_stamp'
wp option delete 'wwpdf_margin_left_right'
wp option delete 'wwpdf_font_premium'
wp option delete 'wwpdf_footer_size_premium'
wp option delete 'wwpdf_footer_color_premium'
wp option delete 'wwpdf_footer_finetune_Y_premium'
wp option delete 'wwpdf_password'
wp option delete 'wwpdf_disable_printing'
wp option delete 'wwpdf_disable_mods'
wp option delete 'wwpdf_disable_copy'
wp option delete 'wwpdf_disable_annot'
wp option delete 'dlm_stamper_margin_lr'
wp option delete 'dlm_stamper_font'
wp option delete 'dlm_stamper_size'
wp option delete 'dlm_stamper_color'
wp option delete 'dlm_stamper_finetune_Y'
wp option delete 'dlm_stamper_pwd'
wp option delete 'dlm_stamper_dis_printing'
wp option delete 'dlm_stamper_dis_mods'
wp option delete 'dlm_stamper_dis_copy'
wp option delete 'dlm_stamper_dis_annot'
wp option delete 'eddimark_margin_left_right'
wp option delete 'woocommerce_file_download_method'
wp option delete 'pdfink_attribution'
wp option delete 'wwpdf_delete_checkbox'
wp option delete 'dlm_stamper_lnt'
wp option delete 'wwpdf_donate_dismiss_08-28'
wp option delete 'wwpdf_enable'
wp option delete 'wwpdf_footer_input'
wp option delete 'wwpdf_font'
wp option delete 'wwpdf_footer_size'
wp option delete 'wwpdf_footer_color'
wp option delete 'wwpdf_footer_y'
wp option delete 'wwpdf_debug_mode'
wp option delete 'eddimark_textarea_fixed'
wp option delete 'edd_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wwpdf_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wwpdf_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wwpdf_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wwpdf_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wwpdf_ignore_notice%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wwpdf_ignore_notice%'"
