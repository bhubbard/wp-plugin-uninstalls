-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zupportdesk_email', 'zupportdesk_password', 'zupportdesk_userId', 'zupportdesk_companyList', 'zupportdesk_selectedCompanyId', 'zupportdesk_authorizeToken', 'zupportdesk_widgetId');

