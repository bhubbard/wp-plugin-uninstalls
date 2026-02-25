-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trafficontent_channel_id', 'trafficontent_consent_given', 'trafficontent_logo_attachment_id', 'trafficontent_connected', 'trafficontent_do_activation_redirect', 'trafficontent_ui_reset_needed', 'trafficontent_token', '_trafficontent_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_application_passwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_application_passwords');

