-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aikct_free_api_activated', 'aikct_apikey_token_huggingface', 'aikct_apikey_gpt35', 'aikct_apikey_gpt4o', 'aikct_apikey_gemini', 'aikct_apikey_token_cloudfalre', 'aikct_apikey_account_id_cloudfalre', 'aikct_apikey_languages', 'aikct_images', 'aikct_tags', 'aikct_comment', 'aikct_idea_title', 'aikct_blogfromyoutube', 'aikct_rewrite_from_url', 'aikct_rewrite_post_cron_time', 'aikct_rewrite_content_old_post', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aikct_prompt_params', '_old_content');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aikct_prompt_params', '_old_content');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aikct_prompt_params', '_old_content');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aikct_prompt_params', '_old_content');

