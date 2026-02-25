-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('award-force-sso-installation-domain', 'award-force-sso-api-key', 'award-force-access-token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('award-force-slug');
DELETE FROM wp_usermeta WHERE meta_key IN ('award-force-slug');
DELETE FROM wp_termmeta WHERE meta_key IN ('award-force-slug');
DELETE FROM wp_commentmeta WHERE meta_key IN ('award-force-slug');

