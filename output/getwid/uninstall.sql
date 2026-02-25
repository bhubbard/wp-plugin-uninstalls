-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getwid_load_assets_on_demand', 'getwid_move_css_to_head', 'getwid_recaptcha_v2_site_key', 'getwid_recaptcha_v2_secret_key', 'getwid_contact_form_recipient_email', 'getwid_google_api_key', 'getwid_instagram_token', 'getwid_instagram_cache_timeout', 'getwid_mailchimp_api_key', 'audiences_list_chash', 'getwid_section_content_width', 'getwid_smooth_animation', 'getwid_instagram_token_cron_error_message', 'getwid_db_version', 'getwid_db_version_history', 'getwid_instagram_response_data', 'getwid_templates_response_data');

