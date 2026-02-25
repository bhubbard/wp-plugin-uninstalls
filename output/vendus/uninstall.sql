-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vendus_plugin_form_config_register', 'vendus_plugin_form_config_exemption', 'vendus_plugin_form_config_exemption_law', 'vendus_plugin_form_config_invoice_type', 'vendus_plugin_form_config_ignore_notes', 'vendus_plugin_config_api_key', 'vendus_plugin_form_config_ignore_check_completed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_nif');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_nif');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_nif');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_nif');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_nif';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_nif';

