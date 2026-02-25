-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssofortng_options', 'localtzoffset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'email');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'email');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'email');

