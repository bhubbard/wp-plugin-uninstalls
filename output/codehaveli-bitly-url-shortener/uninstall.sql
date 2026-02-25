-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ch_wbitly_url_option', 'wbitly_guid_success', 'wbitly_guid_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wbitly_shorturl');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wbitly_shorturl');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wbitly_shorturl');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wbitly_shorturl');

