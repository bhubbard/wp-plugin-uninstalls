-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7r_tab');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('check_id', 'succ_page_id', 'succ_page_url', 'file_url', 'file_id', 'yspl_cf7r_redirect_needed', 'yspl_cf7r_submission_download_needed', 'yspl_cf7r_custom_js_needed', 'custom_js_cf7', 'yspl_cf7r_submission_popup_needed', 'popup_mail_sent', 'popup_warning_invalid', 'popup_failed_mail', 'popup_failed_recaptcha');
DELETE FROM wp_usermeta WHERE meta_key IN ('check_id', 'succ_page_id', 'succ_page_url', 'file_url', 'file_id', 'yspl_cf7r_redirect_needed', 'yspl_cf7r_submission_download_needed', 'yspl_cf7r_custom_js_needed', 'custom_js_cf7', 'yspl_cf7r_submission_popup_needed', 'popup_mail_sent', 'popup_warning_invalid', 'popup_failed_mail', 'popup_failed_recaptcha');
DELETE FROM wp_termmeta WHERE meta_key IN ('check_id', 'succ_page_id', 'succ_page_url', 'file_url', 'file_id', 'yspl_cf7r_redirect_needed', 'yspl_cf7r_submission_download_needed', 'yspl_cf7r_custom_js_needed', 'custom_js_cf7', 'yspl_cf7r_submission_popup_needed', 'popup_mail_sent', 'popup_warning_invalid', 'popup_failed_mail', 'popup_failed_recaptcha');
DELETE FROM wp_commentmeta WHERE meta_key IN ('check_id', 'succ_page_id', 'succ_page_url', 'file_url', 'file_id', 'yspl_cf7r_redirect_needed', 'yspl_cf7r_submission_download_needed', 'yspl_cf7r_custom_js_needed', 'custom_js_cf7', 'yspl_cf7r_submission_popup_needed', 'popup_mail_sent', 'popup_warning_invalid', 'popup_failed_mail', 'popup_failed_recaptcha');

