-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stcfq_redirect_to_settings', 'stcfq_form_fields', 'stcfq_consent_field', 'stcfq_submit_button', 'stcfq_feedback_messages', 'stcfq_layout', 'stcfq_design', 'stcfq_captcha', 'stcfq_google_recaptcha_v2', 'stcfq_cf_turnstile', 'stcfq_block_keywords', 'stcfq_email_carrier', 'stcfq_wp_mail', 'stcfq_smtp', 'stcfq_email_to_admin', 'stcfq_delete_data_enable', 'stcfq_unanswered_messages_count');

