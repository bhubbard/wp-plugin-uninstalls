-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('updraftmanager_last_version', 'udmanager_authenticated_sids_meta_offset');
DELETE FROM wp_options WHERE option_name LIKE 'uddownld_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('udmanager_lastcheckins', 'udmanager_authenticated_sids', 'updraftmanager_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('udmanager_lastcheckins', 'udmanager_authenticated_sids', 'updraftmanager_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('udmanager_lastcheckins', 'udmanager_authenticated_sids', 'updraftmanager_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('udmanager_lastcheckins', 'udmanager_authenticated_sids', 'updraftmanager_settings');

