-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ImfsPage', 'imfsQueryMonitor', 'imfsQueryMonitornextMonitorUpdate', 'imfsQueryMonitorGather');
DELETE FROM wp_options WHERE option_name LIKE '%nextMonitorUpdate';
DELETE FROM wp_options WHERE option_name LIKE '%Gather';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers');

