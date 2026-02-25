-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blocksolid_gateway_options', 'classic-editor-replace');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_blocksolid_gateway_members_only');
DELETE FROM wp_usermeta WHERE meta_key IN ('_blocksolid_gateway_members_only');
DELETE FROM wp_termmeta WHERE meta_key IN ('_blocksolid_gateway_members_only');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_blocksolid_gateway_members_only');

