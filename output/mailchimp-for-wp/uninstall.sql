-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc4wp_flash_messages', 'mc4wp', 'mc4wp_lite_version', 'mc4wp_version', 'mc4wp_lite_form', 'mc4wp_default_form_id', 'mc4wp_form', 'mc4wp_form_stylesheets', 'mc4wp_lite', 'mc4wp_lite_checkbox', 'mc4wp_checkbox', 'mc4wp_integrations', 'mc4wp_custom_css_file', 'sidebars_widgets', 'widget_mc4wp_widget', 'widget_mc4wp_form_widget', 'mc4wp_groupings_map', 'mc4wp_mailchimp_lists_v3_fallback', 'mc4wp_mailchimp_lists', 'mc4wp_api_key_notice_dismissed', 'mc4wp_mailchimp_lists_fallback', 'mc4wp_mailchimp_lists_v3', 'mc4wp_error_email_sent');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mc4wp_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mc4wp_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mc4wp_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mc4wp_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'text_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'text_%';

