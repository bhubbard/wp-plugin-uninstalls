-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'site_name');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_capabilities';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_capabilities';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_capabilities';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_capabilities';

