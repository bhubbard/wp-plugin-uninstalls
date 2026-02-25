-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tesmino_token');
DELETE FROM wp_options WHERE option_name LIKE 'chabok_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ts_reportage_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ts_reportage_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ts_reportage_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ts_reportage_id');

