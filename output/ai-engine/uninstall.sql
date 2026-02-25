-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwai_chatbots', 'mwai_advisor_data', 'mwai_token_test_mode', 'mwai_test_token_data', 'mwai_templates', 'force_sslverify', 'meowapps_hide_meowapps', 'litespeed.conf.cache-rest', 'mwai_options', 'meowapps_news', 'mwai_cron_last_run', 'mwai_cron_running_mwai_tasks_internal_run', 'mwai_cron_running_mwai_tasks_internal_dev_run');
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial';
DELETE FROM wp_options WHERE option_name LIKE '%_rating_date';
DELETE FROM wp_options WHERE option_name LIKE 'mwai_cron_running_%';
DELETE FROM wp_options WHERE option_name LIKE 'mwai_custom_chatbot_%';
DELETE FROM wp_options WHERE option_name LIKE 'mwai_video_metadata_%';
DELETE FROM wp_options WHERE option_name LIKE 'mwai_video_saved_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwai_file_id', '_mwai_file_expires', '_mwai_purpose', '_mwai_envId', 'mwai_draft_media', 'mwai_model', 'mwai_latency', 'mwai_env_id', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwai_file_id', '_mwai_file_expires', '_mwai_purpose', '_mwai_envId', 'mwai_draft_media', 'mwai_model', 'mwai_latency', 'mwai_env_id', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwai_file_id', '_mwai_file_expires', '_mwai_purpose', '_mwai_envId', 'mwai_draft_media', 'mwai_model', 'mwai_latency', 'mwai_env_id', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_mwai_file_id', '_mwai_file_expires', '_mwai_purpose', '_mwai_envId', 'mwai_draft_media', 'mwai_model', 'mwai_latency', 'mwai_env_id', 'first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_mwai_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_mwai_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_mwai_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_mwai_%';

