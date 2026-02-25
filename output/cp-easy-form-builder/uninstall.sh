#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'CP_EFB_LOAD_SCRIPTS'
wp option delete 'form_structure'
wp option delete 'fp_from_email'
wp option delete 'fp_destination_emails'
wp option delete 'fp_subject'
wp option delete 'fp_inc_additional_info'
wp option delete 'fp_return_page'
wp option delete 'fp_message'
wp option delete 'cu_enable_copy_to_user'
wp option delete 'cu_user_email_field'
wp option delete 'cu_subject'
wp option delete 'cu_message'
wp option delete 'vs_use_validation'
wp option delete 'vs_text_is_required'
wp option delete 'vs_text_is_email'
wp option delete 'vs_text_datemmddyyyy'
wp option delete 'vs_text_dateddmmyyyy'
wp option delete 'vs_text_number'
wp option delete 'vs_text_digits'
wp option delete 'vs_text_max'
wp option delete 'vs_text_min'
wp option delete 'vs_text_submitbtn'
wp option delete 'vs_text_previousbtn'
wp option delete 'vs_text_nextbtn'
wp option delete 'cv_enable_captcha'
wp option delete 'cv_width'
wp option delete 'cv_height'
wp option delete 'cv_chars'
wp option delete 'cv_font'
wp option delete 'cv_min_font_size'
wp option delete 'cv_max_font_size'
wp option delete 'cv_noise'
wp option delete 'cv_noise_length'
wp option delete 'cv_background'
wp option delete 'cv_border'
wp option delete 'cv_text_enter_valid_captcha'
wp option delete 'cp_easyform_data'
wp option delete 'autoptimize_js_exclude'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

