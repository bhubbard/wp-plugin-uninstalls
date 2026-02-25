-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_groups_civicrm_sync_settings', 'bp_groups_civicrm_sync_version');

