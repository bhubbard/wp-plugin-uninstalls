-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('deepaibrain_openapi_api', 'deepaibrain_premium_plugin_data', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_deepaibrain_wpai_post_tags', 'ai_custom_prompt_enable', 'ai_custom_prompt', '_deepaibrain_wpai_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_deepaibrain_wpai_post_tags', 'ai_custom_prompt_enable', 'ai_custom_prompt', '_deepaibrain_wpai_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_deepaibrain_wpai_post_tags', 'ai_custom_prompt_enable', 'ai_custom_prompt', '_deepaibrain_wpai_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_deepaibrain_wpai_post_tags', 'ai_custom_prompt_enable', 'ai_custom_prompt', '_deepaibrain_wpai_meta_description');

