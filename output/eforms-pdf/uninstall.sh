#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ninja_forms_addons_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'crm_marketing_%'"
wp option delete 'pdf_custom_fonts'
wp option delete 'pdf_creator_papers'
wp option delete 'pdf_creator_font'
wp option delete 'pdf_download_last'
wp option delete '_redmuber_item_1695'
wp option delete 'woocommerce_pdf_packing'
wp option delete 'woocommerce_pdf'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_redmuber_item_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yeekit_addons_%' OR option_name LIKE '_site_transient_yeekit_addons_%'"
wp transient delete 'yeekit_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_builder_pdf_settings_font_family'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_builder_pdf_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_email_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pdfcreator_eform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pdfcreator_eform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pdfcreator_eform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pdfcreator_eform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'yeeaddons_dismissed_%'"
