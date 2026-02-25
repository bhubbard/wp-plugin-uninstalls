-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbs_options', '_transient_timeout_wbs_token', 'wbs_app_token', 'wbs_token');
DELETE FROM wp_options WHERE option_name LIKE 'free_forms_crm_%';

