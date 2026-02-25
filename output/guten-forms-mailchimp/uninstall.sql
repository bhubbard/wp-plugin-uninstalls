-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwp__mailchimp__api_key', 'cwp__enable__mailchimp');

