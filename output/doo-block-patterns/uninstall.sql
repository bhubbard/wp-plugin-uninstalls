-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('doobp-uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('doobp-cf-keywords', 'doobp-cf-viewport-width', 'doobp-cf-description');
DELETE FROM wp_usermeta WHERE meta_key IN ('doobp-cf-keywords', 'doobp-cf-viewport-width', 'doobp-cf-description');
DELETE FROM wp_termmeta WHERE meta_key IN ('doobp-cf-keywords', 'doobp-cf-viewport-width', 'doobp-cf-description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('doobp-cf-keywords', 'doobp-cf-viewport-width', 'doobp-cf-description');

