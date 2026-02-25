-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('personal_library_contributor', 'personal_library_author', 'personal_library_editor');

