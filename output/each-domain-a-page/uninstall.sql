-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ruigehond007', 'ruigehond016_admin_messages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ruigehond007_favicons');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ruigehond007_favicons');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ruigehond007_favicons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ruigehond007_favicons');

