-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ht_form_global_settings', 'ht_form_integrations', 'ht_contactform_diagnostic_data_agreed', 'ht_contactform_diagnostic_data_notice', 'ht_form_zohocrm_tokens', 'ht_contactform-notice-id-diagnostic-data', 'ht_form_zohocrm_modules');
DELETE FROM wp_options WHERE option_name LIKE 'ht_form_zohocrm_fields_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('integrations');
DELETE FROM wp_usermeta WHERE meta_key IN ('integrations');
DELETE FROM wp_termmeta WHERE meta_key IN ('integrations');
DELETE FROM wp_commentmeta WHERE meta_key IN ('integrations');

