-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smef_debug_log', 'smef_debug_mode', 'smef_api_key', 'smef_contact_unsubscribed_action', 'smef_contact_deleted_action');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smef_form_validation_results');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smef_form_validation_results');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smef_form_validation_results');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smef_form_validation_results');

