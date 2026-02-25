-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'APF_MyFirstFrom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('company-agentEmail', 'company-tickets-perpage', 'company-customers-blocked', 'company-customers-opened', 'company-faqs', 'company-notificationEmails', 'company-departments', 'company_custom_script', 'company_custom_css', 'ticket-selectedAgent', 'ticket-action-status', 'ticket-status', 'ticket-commentAttachment', 'ticket-selected_department', 'ticket-selectedCompany', 'ticket-authorityID', 'ticket-rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('company-agentEmail', 'company-tickets-perpage', 'company-customers-blocked', 'company-customers-opened', 'company-faqs', 'company-notificationEmails', 'company-departments', 'company_custom_script', 'company_custom_css', 'ticket-selectedAgent', 'ticket-action-status', 'ticket-status', 'ticket-commentAttachment', 'ticket-selected_department', 'ticket-selectedCompany', 'ticket-authorityID', 'ticket-rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('company-agentEmail', 'company-tickets-perpage', 'company-customers-blocked', 'company-customers-opened', 'company-faqs', 'company-notificationEmails', 'company-departments', 'company_custom_script', 'company_custom_css', 'ticket-selectedAgent', 'ticket-action-status', 'ticket-status', 'ticket-commentAttachment', 'ticket-selected_department', 'ticket-selectedCompany', 'ticket-authorityID', 'ticket-rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('company-agentEmail', 'company-tickets-perpage', 'company-customers-blocked', 'company-customers-opened', 'company-faqs', 'company-notificationEmails', 'company-departments', 'company_custom_script', 'company_custom_css', 'ticket-selectedAgent', 'ticket-action-status', 'ticket-status', 'ticket-commentAttachment', 'ticket-selected_department', 'ticket-selectedCompany', 'ticket-authorityID', 'ticket-rating');

