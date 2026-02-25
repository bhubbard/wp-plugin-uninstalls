-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dx-sources-cpts', 'dx-sources-numbering');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dx_sources');
DELETE FROM wp_usermeta WHERE meta_key IN ('dx_sources');
DELETE FROM wp_termmeta WHERE meta_key IN ('dx_sources');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dx_sources');

