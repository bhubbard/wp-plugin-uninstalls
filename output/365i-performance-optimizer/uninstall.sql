-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppo_settings', 'i365_po_settings', 'i365_po_settings_backups', 'i365_po_profiles', 'i365_po_db_version', 'i365_po_local_fonts_cache');

