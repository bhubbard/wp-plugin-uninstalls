-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsnm_subscribe_confirmation_status', 'wsnm_form_recaptcha_status', 'wsnm_recaptcha_site_key', 'wsnm_recaptcha_secret_key', 'wsnm_mode', 'wsnm_btn_background_color', 'wsnm_btn_text_color', 'wsnm_button_display', 'wsnm_subscribe_confirmation_email', 'wsnm_subscribe_confirmation_email_subject', 'wsnm_subscribe_notification_email', 'wsnm_subscribe_notification_email_subject', 'wsnm_form_first_last_name', 'wsnm_btn_text', 'wsnm_modal_title', 'wsnm_pre_form_content', 'wsnm_after_form_content', 'wsnm_hubspot_enabled', 'wsnm_hubspot_token', 'wsnm_hubspot_portal_id', 'wsnm_db_version', 'action_scheduler_admin_notice', 'as_comment_count');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wsnm_hubspot_contact_id', 'wsnm_hubspot_synced_at', 'wsnm_hubspot_error', 'wsnm_product_pause', 'wsnm_status', 'wsnm_action_id', 'wsnm_action_time', 'wsnm_product_id', 'wsnm_variation_id', 'wsnm_first_name', 'wsnm_last_name', 'wsnm_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('wsnm_hubspot_contact_id', 'wsnm_hubspot_synced_at', 'wsnm_hubspot_error', 'wsnm_product_pause', 'wsnm_status', 'wsnm_action_id', 'wsnm_action_time', 'wsnm_product_id', 'wsnm_variation_id', 'wsnm_first_name', 'wsnm_last_name', 'wsnm_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('wsnm_hubspot_contact_id', 'wsnm_hubspot_synced_at', 'wsnm_hubspot_error', 'wsnm_product_pause', 'wsnm_status', 'wsnm_action_id', 'wsnm_action_time', 'wsnm_product_id', 'wsnm_variation_id', 'wsnm_first_name', 'wsnm_last_name', 'wsnm_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wsnm_hubspot_contact_id', 'wsnm_hubspot_synced_at', 'wsnm_hubspot_error', 'wsnm_product_pause', 'wsnm_status', 'wsnm_action_id', 'wsnm_action_time', 'wsnm_product_id', 'wsnm_variation_id', 'wsnm_first_name', 'wsnm_last_name', 'wsnm_email');

