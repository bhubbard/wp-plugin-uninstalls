-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('collaborate_notes_active', 'collaborate_notes_db_version');

