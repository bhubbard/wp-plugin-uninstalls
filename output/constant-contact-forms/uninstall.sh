#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ctct_access_token'
wp option delete '_ctct_access_token'
wp option delete 'ctct_refresh_token'
wp option delete '_ctct_refresh_token'
wp option delete '_ctct_expires_in'
wp option delete 'CtctConstantContactcode_verifier'
wp option delete 'CtctConstantContactState'
wp option delete 'ctct_auth_url'
wp option delete 'ctct_key'
wp option delete 'ctct_maybe_needs_reconnected'
wp option delete 'ctct_first_form_modal_dismissed'
wp option delete 'ctct_access_token_timestamp'
wp option delete 'ctct_options_settings'
wp option delete 'ctct_missed_api_requests'
wp option delete 'constant_contact_lists_last_synced'
wp option delete 'ctct_api_v2_v3_migrated'
wp option delete 'ctct_log_suffix'
wp option delete 'ctct_update_notifications'
wp option delete 'ctct-processed-forms'
wp option delete 'ctct_plugin_version'
wp option delete 'ctct_exceptions_exist'
wp option delete 'sidebars_widgets'

# Delete Transients
wp transient delete 'constant_contact_acct_info'
wp transient delete 'ctct_contact'
wp transient delete 'ctct_lists'
wp transient delete 'ctct_list_xrefs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctct_list_%' OR option_name LIKE '_site_transient_ctct_list_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ctct_lists_%' OR option_name LIKE '_site_transient_ctct_lists_%'"

# Clear Cron Jobs
wp cron event delete 'refresh_token_job'
wp cron event delete 'ctct_refresh_token_job'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_list_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_list_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_list_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_list_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_address_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_address_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_address_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_address_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_email_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_email_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_email_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_email_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_fields_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_fields_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_fields_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_fields_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_verify_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_verify_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_verify_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_verify_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_has_email_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_has_email_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_has_email_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_has_email_field'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_title_font_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_title_font_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_title_font_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_title_font_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_max_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_max_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_max_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_max_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_description_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_description_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_description_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_description_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_description_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_description_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_description_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_description_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_submit_button_font_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_submit_button_font_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_submit_button_font_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_submit_button_font_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_submit_button_text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_submit_button_text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_submit_button_text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_submit_button_text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_submit_button_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_submit_button_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_submit_button_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_submit_button_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_title_heading_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_title_heading_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_title_heading_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_title_heading_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_padding_top'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_padding_top'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_padding_top'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_padding_top'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_padding_right'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_padding_right'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_padding_right'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_padding_right'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_padding_bottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_padding_bottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_padding_bottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_padding_bottom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_padding_left'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_padding_left'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_padding_left'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_padding_left'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_input_custom_classes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_input_custom_classes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_input_custom_classes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_input_custom_classes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_inline_display'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_inline_display'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_inline_display'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_inline_display'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_do_ajax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_do_ajax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_do_ajax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_do_ajax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_disable_recaptcha'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_disable_recaptcha'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_disable_recaptcha'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_disable_recaptcha'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_button_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_button_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_button_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_button_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_address_fields_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_address_fields_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_address_fields_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_address_fields_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_address_fields_require'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_address_fields_require'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_address_fields_require'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_address_fields_require'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ctct_duplicate_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ctct_duplicate_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ctct_duplicate_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ctct_duplicate_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_spam_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_spam_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_spam_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_spam_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_form_submission_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_form_submission_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_form_submission_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_form_submission_success'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_redirect_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_redirect_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_redirect_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_redirect_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ctct_disable_emails_for_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ctct_disable_emails_for_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ctct_disable_emails_for_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ctct_disable_emails_for_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
