-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmx_revision_options', 'wp_revision_master_activate');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tmxrm_revision_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('tmxrm_revision_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('tmxrm_revision_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tmxrm_revision_limit');

