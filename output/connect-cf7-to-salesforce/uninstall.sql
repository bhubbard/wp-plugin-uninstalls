-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CF7SF_auth_data', 'CF7SF_instance_url', 'CF7SF_consumer_key', 'CF7SF_consumer_secret', 'CF7SF_callback_url', 'CF7SF_lead', 'cfhs_notification_send_to', 'cfhs_notification_subject', 'CF7SF_token', 'CF7SF_refresh_token', 'CF7SF_token_time', 'CF7SF_sandbox', 'CF7SF_notification_subject', 'CF7SF_notification_send_to', 'CF7SF_uninstall', 'CF7SF_state', 'CF7SF_access_token', 'CF7SF_persons', 'CF7SF_organizations', 'CF7SF_notes', 'CF7SF_file', 'CF7SF_marketing_status');
DELETE FROM wp_options WHERE option_name LIKE 'CF7SF_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_form', 'CF7SF_active', 'CF7SF_update_lead', 'CF7SF_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('_form', 'CF7SF_active', 'CF7SF_update_lead', 'CF7SF_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('_form', 'CF7SF_active', 'CF7SF_update_lead', 'CF7SF_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_form', 'CF7SF_active', 'CF7SF_update_lead', 'CF7SF_fields');

