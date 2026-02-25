-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpdt_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plugin_slug', 'average_review', 'downloads', 'version', 'last_updated', 'description', 'download_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('plugin_slug', 'average_review', 'downloads', 'version', 'last_updated', 'description', 'download_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('plugin_slug', 'average_review', 'downloads', 'version', 'last_updated', 'description', 'download_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plugin_slug', 'average_review', 'downloads', 'version', 'last_updated', 'description', 'download_link');

