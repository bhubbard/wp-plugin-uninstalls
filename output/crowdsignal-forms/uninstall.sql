-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crowdsignal_api_key_secret', 'polldaddy_api_key', 'crowdsignal_forms_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_crowdsignal_forms_poll_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_crowdsignal_forms_poll_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_crowdsignal_forms_poll_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_crowdsignal_forms_poll_ids');

