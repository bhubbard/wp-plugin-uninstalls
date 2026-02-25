-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mi13_access_by_link');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mi13-access-by-link-key');
DELETE FROM wp_usermeta WHERE meta_key IN ('mi13-access-by-link-key');
DELETE FROM wp_termmeta WHERE meta_key IN ('mi13-access-by-link-key');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mi13-access-by-link-key');

