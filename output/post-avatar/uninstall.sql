-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gklpa_showinwritepage', 'gklpa_mydir', 'gklpa_before', 'gklpa_after', 'gklpa_class', 'gklpa_getsize', 'gklpa_scanrecursive', 'gklpa_showincontent', 'gklpa_showinfeeds', 'gkl_postavatar');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('postuserpic');
DELETE FROM wp_usermeta WHERE meta_key IN ('postuserpic');
DELETE FROM wp_termmeta WHERE meta_key IN ('postuserpic');
DELETE FROM wp_commentmeta WHERE meta_key IN ('postuserpic');

