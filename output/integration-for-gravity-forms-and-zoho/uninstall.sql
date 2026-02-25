-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('igzf_zoho_token', 'zoho_users_list', 'igzf_zoho_datacenter', 'igzf_zoho_client_id', 'igzf_zoho_client_secret', 'igzf_zoho_redirection_url', 'igzf_zoho_domain', 'igzf_zoho', 'ignbk_zohobooks_token', 'gf_zoho_notification_send_to', 'gf_zoho_notification_subject', 'zoho_module_data', 'igzf_zoho_uninstall');
DELETE FROM wp_options WHERE option_name LIKE 'igzf_zoho_fields_%';
DELETE FROM wp_options WHERE option_name LIKE 'zoho_crm_module_data%';
DELETE FROM wp_options WHERE option_name LIKE '%-reqfields';
DELETE FROM wp_options WHERE option_name LIKE 'igzf_data_form_%';
DELETE FROM wp_options WHERE option_name LIKE 'igzf_zoho_action_%';

