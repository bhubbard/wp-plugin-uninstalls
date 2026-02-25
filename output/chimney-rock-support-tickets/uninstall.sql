-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crm_support_tickets_plugin_version', 'crm_support_tickets_db_version', 'crm_support_tickets_agent_roles', 'crm_pro_support_tickets_license_key', 'crm_support_tickets_slug_to_tickets', 'crm_support_tickets_enable_admin_email', 'crm_support_tickets_enable_customer_email', 'crm_support_tickets_email_from_name', 'crm_support_tickets_from_email', 'crm_support_tickets_enable_auto_close', 'crm_support_tickets_auto_close_days', 'crm_support_tickets_enable_captcha', 'crm_support_tickets_captcha_site_key', 'crm_support_tickets_captcha_secret_key', 'crm_support_tickets_delete_all_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('crm_ticket_priority', 'crm_ticket_status', 'crm_ticket_agent_id', 'crm_ticket_customer_id', 'crm_ticket_subject', 'crm_ticket_customer_name', 'crm_ticket_email', 'crm_ticket_agent_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('crm_ticket_priority', 'crm_ticket_status', 'crm_ticket_agent_id', 'crm_ticket_customer_id', 'crm_ticket_subject', 'crm_ticket_customer_name', 'crm_ticket_email', 'crm_ticket_agent_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('crm_ticket_priority', 'crm_ticket_status', 'crm_ticket_agent_id', 'crm_ticket_customer_id', 'crm_ticket_subject', 'crm_ticket_customer_name', 'crm_ticket_email', 'crm_ticket_agent_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('crm_ticket_priority', 'crm_ticket_status', 'crm_ticket_agent_id', 'crm_ticket_customer_id', 'crm_ticket_subject', 'crm_ticket_customer_name', 'crm_ticket_email', 'crm_ticket_agent_name');

