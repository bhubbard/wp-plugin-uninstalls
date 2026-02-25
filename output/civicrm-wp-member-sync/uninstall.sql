-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_civi_wpms_memberships_offset', 'civi_wp_member_sync_settings', 'civi_wp_member_sync_version', 'jal_db_version', 'tadms_db_version', 'civi_member_sync_db_version', 'civi_member_sync_settings');

