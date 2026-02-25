-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('formychat_country_code', 'formychat_wc_shop', 'formychat_wc_product', 'formychat_custom_css', 'formychat_integration_fluent-crm', 'formychat_integration_mailchimp', 'formychat_google_sheets', 'formychat_integration_google_sheets', 'scf-setup-run', 'formychat_integration_fluent-crm_lists', 'formychat_integration_fluent-crm_tags', 'formychat_integration_fluent-crm_fields_mapping', 'formychat_widget_table_created', 'formychat_has_first_widget', 'formychat_whatsapp', 'formychat_icon', 'formychat_call_to_action', 'formychat_form', 'formychat_contact_form_7', 'formychat_greetings', 'formychat_target', 'formychat_enabled', 'formychat_google_sheets_just_connected');
DELETE FROM wp_options WHERE option_name LIKE 'formychat_integration_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', '_formy_chat_configuration', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', '_formy_chat_configuration', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', '_formy_chat_configuration', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', '_formy_chat_configuration', 'first_name', 'last_name');

