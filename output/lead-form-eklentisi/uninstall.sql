-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lead_form_fields', 'lead_communication_mode', 'lead_admin_communication_choice', 'lead_form_token', 'lead_form_styles', 'lead_form_title');

