-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cubo_crm_form_settings', 'cubo_crm_global_token', 'cubo_crm_smtp_settings');

