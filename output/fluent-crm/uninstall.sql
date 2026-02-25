-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentcrm-global-settings', '_fluentcrm_experimental_settings', '_fc_last_funnel_processor_ran', 'fluentmail-settings', '_fluentcrm_compliance_settings', '_fc_last_funnel_processor', 'woocommerce_custom_orders_table_enabled', 'fluentcrm_is_sending_emails', 'fluentcrm_is_sending_multi_emails', '_fluentcrm_db_version', '_fluent_last_m_run', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%-global-settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_last_login', '_fcrm_has_role', '_application_passwords', '_design_template', '_footer_settings', '_edit_type', '_template_config', '_email_subject', 'first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('_last_login', '_fcrm_has_role', '_application_passwords', '_design_template', '_footer_settings', '_edit_type', '_template_config', '_email_subject', 'first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('_last_login', '_fcrm_has_role', '_application_passwords', '_design_template', '_footer_settings', '_edit_type', '_template_config', '_email_subject', 'first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_last_login', '_fcrm_has_role', '_application_passwords', '_design_template', '_footer_settings', '_edit_type', '_template_config', '_email_subject', 'first_name', 'last_name', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'billing_phone');

