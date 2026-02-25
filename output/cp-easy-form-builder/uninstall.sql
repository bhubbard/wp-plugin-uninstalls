-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CP_EFB_LOAD_SCRIPTS', 'form_structure', 'fp_from_email', 'fp_destination_emails', 'fp_subject', 'fp_inc_additional_info', 'fp_return_page', 'fp_message', 'cu_enable_copy_to_user', 'cu_user_email_field', 'cu_subject', 'cu_message', 'vs_use_validation', 'vs_text_is_required', 'vs_text_is_email', 'vs_text_datemmddyyyy', 'vs_text_dateddmmyyyy', 'vs_text_number', 'vs_text_digits', 'vs_text_max', 'vs_text_min', 'vs_text_submitbtn', 'vs_text_previousbtn', 'vs_text_nextbtn', 'cv_enable_captcha', 'cv_width', 'cv_height', 'cv_chars', 'cv_font', 'cv_min_font_size', 'cv_max_font_size', 'cv_noise', 'cv_noise_length', 'cv_background', 'cv_border', 'cv_text_enter_valid_captcha', 'cp_easyform_data', 'autoptimize_js_exclude');
DELETE FROM wp_options WHERE option_name LIKE 'installed_%';
DELETE FROM wp_options WHERE option_name LIKE 'codepeople_promote_banner_%';

