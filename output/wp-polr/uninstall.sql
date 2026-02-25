-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('polr_settings_api_key', 'polr_settings_host');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('polr_shortened_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('polr_shortened_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('polr_shortened_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('polr_shortened_url');

