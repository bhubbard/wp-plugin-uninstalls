-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('planetplanet_options', 'planetplanet_category_linkmap');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('source_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('source_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('source_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('source_url');

