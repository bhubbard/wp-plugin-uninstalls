-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpf_taxonomy_rules', 'wpf_import_groups', 'wc_fields_additional', 'thwcfe_sections', 'wpf_options', 'wpf_available_tags', 'wpf_crm_fields', 'wpf_license_check', 'wpf_logs_unseen_errors', 'default_post_edit_rows', 'wpf_ac_connection_id', 'wpf_infusionsoft_products', 'wpf_kartra_email_buffer', 'wpf_klaviyo_code_verifier', 'omnisend_account_id', 'wpf_salesforce_objects', 'wpf_salesforce_record_types', 'erp-contact-fields', 'wpf_background_process_process_lock', 'wpf_keap_backup_key');
DELETE FROM wp_options WHERE option_name LIKE 'wpfb_status_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpf_end_auto_login_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpf-settings', 'user_email', 'first_name', 'user_url', 'last_name', 'activecampaign_lists', 'wpf_ac_customer_id', 'agilecrm_contact_id', 'bento_web_id', 'wpf_customerly_edit_url', 'drip_inactive', 'fluentcrm_lists', 'mailchimp_web_id', 'mailchimp_contact_id', 'mailerlite_contact_id', 'mautic_contact_id', 'sendinblue_contact_id', 'vtiger_contact_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpf-settings', 'user_email', 'first_name', 'user_url', 'last_name', 'activecampaign_lists', 'wpf_ac_customer_id', 'agilecrm_contact_id', 'bento_web_id', 'wpf_customerly_edit_url', 'drip_inactive', 'fluentcrm_lists', 'mailchimp_web_id', 'mailchimp_contact_id', 'mailerlite_contact_id', 'mautic_contact_id', 'sendinblue_contact_id', 'vtiger_contact_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpf-settings', 'user_email', 'first_name', 'user_url', 'last_name', 'activecampaign_lists', 'wpf_ac_customer_id', 'agilecrm_contact_id', 'bento_web_id', 'wpf_customerly_edit_url', 'drip_inactive', 'fluentcrm_lists', 'mailchimp_web_id', 'mailchimp_contact_id', 'mailerlite_contact_id', 'mautic_contact_id', 'sendinblue_contact_id', 'vtiger_contact_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpf-settings', 'user_email', 'first_name', 'user_url', 'last_name', 'activecampaign_lists', 'wpf_ac_customer_id', 'agilecrm_contact_id', 'bento_web_id', 'wpf_customerly_edit_url', 'drip_inactive', 'fluentcrm_lists', 'mailchimp_web_id', 'mailchimp_contact_id', 'mailerlite_contact_id', 'mautic_contact_id', 'sendinblue_contact_id', 'vtiger_contact_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_web_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_web_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_web_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_web_id';

