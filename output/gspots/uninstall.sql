-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('api', 'key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta-address-text', 'meta-zip-text', 'meta-city-text', 'meta-state-text', 'meta-lng-text', 'meta-lat-text');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta-address-text', 'meta-zip-text', 'meta-city-text', 'meta-state-text', 'meta-lng-text', 'meta-lat-text');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta-address-text', 'meta-zip-text', 'meta-city-text', 'meta-state-text', 'meta-lng-text', 'meta-lat-text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta-address-text', 'meta-zip-text', 'meta-city-text', 'meta-state-text', 'meta-lng-text', 'meta-lat-text');

