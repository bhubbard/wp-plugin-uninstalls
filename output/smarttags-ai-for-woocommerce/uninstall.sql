-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smarttags_cloud_job_id', 'smarttags_cloud_registered_at', 'smarttags_cloud_last_sync', 'smarttags_cloud_last_cleanup', 'smarttags_dlm_activation_token', 'smarttags_dlm_license_key', 'smarttags_dlm_consumer_key', 'smarttags_dlm_consumer_secret', 'smarttags_dlm_activated_domain', 'smarttags_dlm_domain_mismatch', 'smarttags_last_deactivation_cancelled_count', 'smarttags_auto_runs_count', 'smarttags_install_hash', 'smarttags_shared_key_google', 'smarttags_shared_key_groq', 'smarttags_settings_v1', 'smarttags_cloud_status', 'smarttags_dlm_license_status', 'smarttags_google_rate_limit_hit', 'smarttags_remote_prompts', 'smarttags_lock', 'smarttags_tag_popularity', 'smarttags_count_with_suggestions');
DELETE FROM wp_options WHERE option_name LIKE 'smarttags_shared_key_%';
DELETE FROM wp_options WHERE option_name LIKE 'smarttags_temp_ai_enabled_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smarttags_suggestions', '_smarttags_optout', '_smarttags_last_auto_applied', '_smarttags_tag_dates', '_smarttags_ai_tags');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smarttags_suggestions', '_smarttags_optout', '_smarttags_last_auto_applied', '_smarttags_tag_dates', '_smarttags_ai_tags');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smarttags_suggestions', '_smarttags_optout', '_smarttags_last_auto_applied', '_smarttags_tag_dates', '_smarttags_ai_tags');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smarttags_suggestions', '_smarttags_optout', '_smarttags_last_auto_applied', '_smarttags_tag_dates', '_smarttags_ai_tags');

