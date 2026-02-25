#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmplz-tc-current-version'
wp option delete 'cmplz_tc_documents_update_date'
wp option delete 'cmplz_documents_update_date'
wp option delete 'cmplz_generate_pdf_languages'
wp option delete 'cmplz_pdf_dir_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'complianz_tc_options_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_custom_page_url'"
wp option delete 'cmplz_deleted_cookies'
wp option delete 'cmplz_tc_review_notice_shown'
wp option delete 'cmplz_tc_activation_time'
wp option delete 'cmplz_wizard_completed_once'
wp option delete 'trp_settings'
wp option delete 'complianz_tc_options_settings'

# Delete Transients
wp transient delete 'cmplz_tc_redirect_to_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cmplz_tc_shortcode_%' OR option_name LIKE '_site_transient_cmplz_tc_shortcode_%'"
wp transient delete 'cmplz_wizard_locked_by_user'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmplz_tc_document_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmplz_tc_document_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmplz_tc_document_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmplz_tc_document_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmplz_tc_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmplz_tc_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmplz_tc_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmplz_tc_shortcode'"
