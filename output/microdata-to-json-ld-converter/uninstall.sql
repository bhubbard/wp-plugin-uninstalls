-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mdtj_remove_microdata', 'mdtj_regenerate_on_update', 'mdtj_create_json', 'mdtj_scheduler_settings', 'mdtj_last_scheduled_rebuild_log', 'mdtj_rebuild_queue');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_mdtj_json_ld');
DELETE FROM wp_usermeta WHERE meta_key IN ('_mdtj_json_ld');
DELETE FROM wp_termmeta WHERE meta_key IN ('_mdtj_json_ld');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_mdtj_json_ld');

