-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mb4wp_api_options', 'mb4wp_api_connected', 'mb4wp_api_disconnected', 'mb4wp_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mb4wp_form_description', 'mb4wp_form_builder_options', 'mb4wp_form_builder_default_label', 'mb4wp_form_message_options', 'mb4wp_form_appearance_options', 'mb4wp_form_settings_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('mb4wp_form_description', 'mb4wp_form_builder_options', 'mb4wp_form_builder_default_label', 'mb4wp_form_message_options', 'mb4wp_form_appearance_options', 'mb4wp_form_settings_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('mb4wp_form_description', 'mb4wp_form_builder_options', 'mb4wp_form_builder_default_label', 'mb4wp_form_message_options', 'mb4wp_form_appearance_options', 'mb4wp_form_settings_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mb4wp_form_description', 'mb4wp_form_builder_options', 'mb4wp_form_builder_default_label', 'mb4wp_form_message_options', 'mb4wp_form_appearance_options', 'mb4wp_form_settings_options');

