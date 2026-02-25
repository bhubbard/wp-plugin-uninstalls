-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailchimp_api_token', 'sp_dsgvo_dsgvo_licence', 'sp_dsgvo_license_activated', 'mr-webinare');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sp_dsgvo_CSRF_token', 'sp_dsgvo_popup');
DELETE FROM wp_usermeta WHERE meta_key IN ('sp_dsgvo_CSRF_token', 'sp_dsgvo_popup');
DELETE FROM wp_termmeta WHERE meta_key IN ('sp_dsgvo_CSRF_token', 'sp_dsgvo_popup');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sp_dsgvo_CSRF_token', 'sp_dsgvo_popup');

