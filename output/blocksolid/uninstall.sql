-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blocksolid_options', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blocksolid_overlay_active');
DELETE FROM wp_usermeta WHERE meta_key IN ('blocksolid_overlay_active');
DELETE FROM wp_termmeta WHERE meta_key IN ('blocksolid_overlay_active');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blocksolid_overlay_active');

