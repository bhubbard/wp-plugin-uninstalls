-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wp_wlh_cron_queue', 'wp_wlh_db_version', 'wp_wlh_install', 'wp_wlh_uninstall');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_wlh_linking_to', '_wp_wlh_linking_here');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_wlh_linking_to', '_wp_wlh_linking_here');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_wlh_linking_to', '_wp_wlh_linking_here');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_wlh_linking_to', '_wp_wlh_linking_here');

