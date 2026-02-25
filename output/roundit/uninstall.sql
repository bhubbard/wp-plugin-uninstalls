-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_usermeta WHERE meta_key IN ('location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_termmeta WHERE meta_key IN ('location', 'border', 'border_color', 'shadow_size', 'shadow_blur');
DELETE FROM wp_commentmeta WHERE meta_key IN ('location', 'border', 'border_color', 'shadow_size', 'shadow_blur');

