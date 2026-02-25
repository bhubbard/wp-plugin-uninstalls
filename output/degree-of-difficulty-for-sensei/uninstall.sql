-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Sensei_Plugin_Not_Activated');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('image');
DELETE FROM wp_usermeta WHERE meta_key IN ('image');
DELETE FROM wp_termmeta WHERE meta_key IN ('image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('image');

