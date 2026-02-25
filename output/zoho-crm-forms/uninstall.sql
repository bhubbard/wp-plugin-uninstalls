-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zcf_crmformswpbuilder_settings', 'zcrm_integ_domain_name', 'crm_users', 'zcf_crm_oldversion_shortcodes', 'zcf_captcha_settings', 'zcf_crmfields_shortcodes', 'zcrm_integ_client_id', 'zcrm_integ_client_secret', 'zcrm_integ_authorization_uri', 'zcf_user_capture_settings', 'zcf_usersync_assignedto_settings', 'ZCFFormBuilderPluginActivated', 'custom_plugin', 'zohocrmbasemodule', 'Sync_value_on_off', 'usersync_rr_value', 'zcf_contactform7plugin_settings', 'ZcfLeadContactformPLugin', 'crmforms_crmformswpbuilder_fields_shortcodes', 'ZcfFromBuilderFirstTimeWarning', 'zcf_lead_post_field_settings', 'zcf_lead_widget_field_settings', 'zcf_lead_fields-tmp', 'zcf_contact_fields-tmp', 'zcf-zohocrm-form-builder');
DELETE FROM wp_options WHERE option_name LIKE 'Thirdparty_%';

