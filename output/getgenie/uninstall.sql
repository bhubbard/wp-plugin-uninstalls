-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('getgenie_admin_dashboard_config', 'getgenie_site_token', 'getgenie_subscription_statistics_timestamp', 'getgenie_subscription_statistics', 'getgenie_auth_token_secret_key', 'getgenie_install_date', 'classic-editor-replace');
DELETE FROM wp_options WHERE option_name LIKE '%__banner_data';
DELETE FROM wp_options WHERE option_name LIKE '%__banner_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_never_show';
DELETE FROM wp_options WHERE option_name LIKE '%_ask_me_later';
DELETE FROM wp_options WHERE option_name LIKE '%_install_date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action_Date';
DELETE FROM wp_options WHERE option_name LIKE '%_first_action';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_data';
DELETE FROM wp_options WHERE option_name LIKE '%__stories_last_check';
DELETE FROM wp_options WHERE option_name LIKE '%_getgenie_showed_notification';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_current_usage', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_current_usage', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_current_usage', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('getgenie_chat_messages', 'getgenie_chat_template_slug', 'history_input', 'history_output', 'history_current_usage', 'history_creativity_level', 'history_template_slug', '_wp_attachment_image_alt');

