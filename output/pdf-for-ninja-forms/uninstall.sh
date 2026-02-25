#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_yeepdf_dropbox_api_token'
wp option delete '_yeepdf_dropbox_api_token_refresh_token'
wp option delete 'pdf_creator_dropbox_token'
wp option delete 'pdf_creator_dropbox_token_secret'
wp option delete 'pdf_custom_fonts'
wp option delete '_yeepdf_woocommerce_demo'
wp option delete 'pdf_creator_save_folder'
wp option delete 'pdf_creator_save_random'
wp option delete 'pdf_creator_papers'
wp option delete 'pdf_creator_save_pdf'
wp option delete 'pdf_download_last'
wp option delete 'yeepdf_ninja_forms_setup'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%'"
wp option delete 'ninja_forms_addons_feed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yeekit_addons_%' OR option_name LIKE '_site_transient_yeekit_addons_%'"
wp transient delete 'yeekit_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pdfcreator_ninja_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pdfcreator_ninja_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pdfcreator_ninja_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pdfcreator_ninja_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_field_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
