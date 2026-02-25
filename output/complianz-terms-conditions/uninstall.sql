-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmplz-tc-current-version', 'cmplz_tc_documents_update_date', 'cmplz_documents_update_date', 'cmplz_generate_pdf_languages', 'cmplz_pdf_dir_token', 'cmplz_deleted_cookies', 'cmplz_tc_review_notice_shown', 'cmplz_tc_activation_time', 'cmplz_wizard_completed_once', 'trp_settings', 'complianz_tc_options_settings', 'cmplz_tc_redirect_to_settings', 'cmplz_wizard_locked_by_user');
DELETE FROM wp_options WHERE option_name LIKE '%_custom_page';
DELETE FROM wp_options WHERE option_name LIKE 'complianz_tc_options_%';
DELETE FROM wp_options WHERE option_name LIKE '%_custom_page_url';
DELETE FROM wp_options WHERE option_name LIKE 'cmplz_tc_shortcode_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cmplz_tc_document_status', 'cmplz_tc_shortcode');
DELETE FROM wp_usermeta WHERE meta_key IN ('cmplz_tc_document_status', 'cmplz_tc_shortcode');
DELETE FROM wp_termmeta WHERE meta_key IN ('cmplz_tc_document_status', 'cmplz_tc_shortcode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cmplz_tc_document_status', 'cmplz_tc_shortcode');

