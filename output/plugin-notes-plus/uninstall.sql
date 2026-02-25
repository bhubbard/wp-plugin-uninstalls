-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_notes_plus_db_version', 'plugin_notes_plus_note_placement');

