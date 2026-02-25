-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cfhs_modules', 'cfhs_access_token', 'cfhs_hf', 'cfhs_notification_subject', 'cfhs_notification_send_to', 'cfhs_uninstall', 'cfhs_portal_id', 'cfhs_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cfhs_module', '_form', 'cfhs_active', 'cfhs_fields', 'cfhs_subscribe_from_url', 'cfhs_action');
DELETE FROM wp_usermeta WHERE meta_key IN ('cfhs_module', '_form', 'cfhs_active', 'cfhs_fields', 'cfhs_subscribe_from_url', 'cfhs_action');
DELETE FROM wp_termmeta WHERE meta_key IN ('cfhs_module', '_form', 'cfhs_active', 'cfhs_fields', 'cfhs_subscribe_from_url', 'cfhs_action');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cfhs_module', '_form', 'cfhs_active', 'cfhs_fields', 'cfhs_subscribe_from_url', 'cfhs_action');

