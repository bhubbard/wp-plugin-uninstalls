-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7pd_access_token', 'cf7pd_persons', 'cf7pd_organizations', 'cf7pd_notes', 'cf7pd_lead', 'cf7pd_file', 'cf7pd_marketing_status', 'cfhs_notification_send_to', 'cfhs_notification_subject', 'cf7pd_notification_subject', 'cf7pd_notification_send_to', 'cf7pd_uninstall');
DELETE FROM wp_options WHERE option_name LIKE 'cf7pd_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', 'cf7pd_active', 'cf7pd_update_person', 'cf7pd_update_org', 'cf7pd_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', 'cf7pd_active', 'cf7pd_update_person', 'cf7pd_update_org', 'cf7pd_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', 'cf7pd_active', 'cf7pd_update_person', 'cf7pd_update_org', 'cf7pd_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', 'cf7pd_active', 'cf7pd_update_person', 'cf7pd_update_org', 'cf7pd_fields');

