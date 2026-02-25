-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('consentwow_forms', 'consentwow_forms_next_id', 'consentwow_api_token', 'consentwow_consent_purposes', 'consentwow_form_notice');

