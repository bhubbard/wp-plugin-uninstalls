-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc_interest_groups', 'mc_merge_vars', 'mc_list_id', 'mc_header_content', 'mc_subheader_content', 'mc_submit_text', 'mc_use_unsub_link', 'mc_update_existing', 'mc_double_optin', 'mc_custom_style', 'mailchimp_sf_lists', 'mc_user', 'mailchimp_sf_last_sync_time', 'mailchimp_sf_user_sync_start_cta_shown', 'mailchimp_sf_waiting_for_login', 'mc_api_key', 'mc_nuke_all_styles', 'mc_form_border_width', 'mc_form_border_color', 'mc_form_text_color', 'mc_form_background', 'mailchimp_sf_access_token', 'mailchimp_sf_auth_error', 'mc_datacenter', 'mailchimp_sf_user_sync_running', 'mc_merge_field_migrate', 'mc_list_name', 'mc_email_type_option', 'mc_version', 'mc_rewards', 'mailchimp_sf_oauth_secret', 'mailchimp_sf_cancel_user_sync_process', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'mc_show_interest_groups_%';
DELETE FROM wp_options WHERE option_name LIKE 'mc_mv_%';
DELETE FROM wp_options WHERE option_name LIKE 'mailchimp_sf_merge_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'mailchimp_sf_interest_groups_%';

