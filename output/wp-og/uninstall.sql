-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('og-site_name', 'og-title', 'og-description', 'og-app_id', 'og-image', 'og-post_types');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_og-title', '_og-description', '_og-image');
DELETE FROM wp_usermeta WHERE meta_key IN ('_og-title', '_og-description', '_og-image');
DELETE FROM wp_termmeta WHERE meta_key IN ('_og-title', '_og-description', '_og-image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_og-title', '_og-description', '_og-image');

