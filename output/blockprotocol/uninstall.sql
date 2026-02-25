-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('block_protocol_options', 'block_protocol_view_count', 'block_protocol_db_migration_version');

