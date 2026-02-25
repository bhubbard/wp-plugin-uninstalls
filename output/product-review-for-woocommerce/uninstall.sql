-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pisol_review_order_status', 'pisol_review_reminder_delay', 'pisol_review_from_date', 'pisol_review_to_date', 'pisol_review_enable_past_order_reminder', 'pisol_review_reminder_rate', 'pisol_review_flush_endpoint', 'pisol_review_reminder_email_from_address', 'pisol_review_reminder_email_from', 'pisol_review_reminder_email_reply_address', 'pisol_review_unsubscribe', 'pisol_review_unsubscribe_link_text', 'pisol_review_reminder_email_subject', 'pisol_review_reminder_email_heading', 'pisol_review_reminder_email_body', 'pisol_review_reminder_email_unsubscribe_text', 'pisol_review_manual_reminder', 'pisol_review_automatic_reminder', 'pisol_review_reminder_email_footer', 'pi_review_activation_redirect', 'pisol_review_show_order_review_section', 'pisol_review_end_point', 'pisol_review_end_point_text', 'pisol_review_template', 'pisol_review_display_verified_tag', 'pisol_review_display_form', 'pisol_review_show_review_tab', 'pisol_review_reminder_permission', 'pisol_review_load_more', 'pisol_review_moderation', 'pisol_review_form_title', 'pisol_review_form_description', 'pisol_review_form_submit', 'pisol_review_form_review_placeholder', 'pisol_review_form_success_msg', 'pisol_review_form_rating_error', 'pisol_review_form_review_error', 'pisol_review_required', 'pisol_review_default_rating', 'pisol_review_form_logo', 'pisol_review_logo_alignment', 'pisol_review_min_char_length', 'pisol_review_max_char_length', 'pisol_review_loaded_review', 'pisol_review_reminder_permission_required', 'pisol_review_permission_text');
DELETE FROM wp_options WHERE option_name LIKE '%_send';
DELETE FROM wp_options WHERE option_name LIKE '%_completed';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('review_parameters', 'label', 'required', 'default_rating', 'rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('review_parameters', 'label', 'required', 'default_rating', 'rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('review_parameters', 'label', 'required', 'default_rating', 'rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('review_parameters', 'label', 'required', 'default_rating', 'rating');

