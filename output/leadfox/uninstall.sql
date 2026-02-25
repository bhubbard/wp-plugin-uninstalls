-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apikey', 'secret', 'list', 'leadfox_apikey', 'leadfox_secret', 'leadfox_list');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone');

