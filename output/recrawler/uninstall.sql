-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mihdan_index_now_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_last_update';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_last_update';

