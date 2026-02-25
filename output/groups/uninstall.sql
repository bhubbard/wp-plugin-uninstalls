-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'groups_plugin_version', 'groups_delete_data', 'groups_plugin_updated_legacy', 'groups_plugin_activated', 'groups_plugin_updated', 'groups_utility_tree');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('groups-join-data', 'groups-leave-data');
DELETE FROM wp_usermeta WHERE meta_key IN ('groups-join-data', 'groups-leave-data');
DELETE FROM wp_termmeta WHERE meta_key IN ('groups-join-data', 'groups-leave-data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('groups-join-data', 'groups-leave-data');

