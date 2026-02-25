-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('init_plugin_suite_pulse_for_discord_enable', 'init_plugin_suite_pulse_for_discord_webhook_url', 'init_plugin_suite_pulse_for_discord_username', 'init_plugin_suite_pulse_for_discord_avatar', 'init_plugin_suite_pulse_for_discord_notify_new_post', 'init_plugin_suite_pulse_for_discord_notify_post_update', 'init_plugin_suite_pulse_for_discord_include_featured', 'init_plugin_suite_pulse_for_discord_image_size', 'init_plugin_suite_pulse_for_discord_message_template_post', 'init_plugin_suite_pulse_for_discord_timeout', 'init_plugin_suite_pulse_for_discord_retry');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('init_plugin_suite_pulse_for_discord_role_id', 'init_plugin_suite_pulse_for_discord_all_role_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('init_plugin_suite_pulse_for_discord_role_id', 'init_plugin_suite_pulse_for_discord_all_role_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('init_plugin_suite_pulse_for_discord_role_id', 'init_plugin_suite_pulse_for_discord_all_role_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('init_plugin_suite_pulse_for_discord_role_id', 'init_plugin_suite_pulse_for_discord_all_role_id');

