-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cutzy_url_option_name', 'cutzy_guid_success', 'cutzy_guid_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cutzy_shorturl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cutzy_shorturl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cutzy_shorturl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cutzy_shorturl');

