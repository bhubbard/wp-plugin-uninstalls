-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsroomie_lead_tag', 'newsroomie_new_lead_tag', 'newsroomie_new_google_user_tag', 'newsroomie_new_linkedin_user_tag', 'newsroomie_api_token', 'newsroomie_leads_cta_title', 'newsroomie_leads_cta_body', 'newsroomie_leads_cta_email_placeholder', 'newsroomie_leads_cta_unlock_btn', 'newsroomie_leads_cta_google_btn', 'newsroomie_leads_cta_linkedin_btn', 'newsroomie_modal_leads_cta_success_title', 'newsroomie_modal_leads_cta_success_body', 'newsroomie_modal_leads_cta_failed_title', 'newsroomie_modal_leads_cta_failed_body', 'newsroomie_lead_email_subject', 'newsroomie_lead_email_from_name', 'newsroomie_lead_email_from_email', 'newsroomie_lead_email_message', 'newsroomie_tenant', 'newsroomie_sync_to', 'newsroomie_sdk_config', 'newsroomie_push_enabled', 'newsroomie_push_immediate', 'newsroomie_subscriber_cta_title', 'newsroomie_subscriber_cta_body', 'newsroomie_subscriber_cta_subscribe_btn', 'newsroomie_subscriber_cta_login_btn', 'newsroomie_subscriber_cta_subscribe_link', 'newsroomie_subscriber_cta_login_link', 'newsroomie_modal_text', 'newsroomie_modal_email_placeholder', 'newsroomie_modal_register_button', 'newsroomie_modal_google_button', 'newsroomie_modal_linkedin_button', 'newsroomie_modal_success_title', 'newsroomie_modal_success_body', 'newsroomie_hash_key', 'newsroomie_tagging_options_cleared', 'newsroomie_is_api_token_valid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'account_locked', 'user_banned');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'account_locked', 'user_banned');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'account_locked', 'user_banned');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'account_locked', 'user_banned');

