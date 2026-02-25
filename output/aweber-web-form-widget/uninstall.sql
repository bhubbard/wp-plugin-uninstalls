-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('AWeberWebformPluginWidgetOptions', 'aweber_webform_oauth_id', 'aweber_webform_oauth_removed', 'aweber_comment_checkbox_toggle', 'aweber_registration_checkbox_toggle', 'aweber_analytics_checkbox_toggle', 'aweber_comment_subscriber_text', 'aweber_register_subscriber_text', 'aweber_register_subscriber_listid', 'aweber_comment_subscriber_listid', 'aweber_comment_subscriber_tags', 'aweber_register_subscriber_tags', 'aweber_option_submitted', 'aweber_oauth_error', 'aweber_web_push_listid', 'AWeberWebformPluginAdminOptions', 'aweber_signup_text_value', 'dashboard_widget_options', 'aweber_landing_page_links');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

