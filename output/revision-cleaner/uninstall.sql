-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Revis_Setting', 'Revis_Cleaned');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Revis_Setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('Revis_Setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('Revis_Setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Revis_Setting');

