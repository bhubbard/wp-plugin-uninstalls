-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('efs-settings', 'efs-slides', 'efs-images', 'efs-settings-group');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('efslider');
DELETE FROM wp_usermeta WHERE meta_key IN ('efslider');
DELETE FROM wp_termmeta WHERE meta_key IN ('efslider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('efslider');

