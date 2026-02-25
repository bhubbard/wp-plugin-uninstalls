-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_web_notes_position_css', 'quick_web_notes_message', 'quick_web_notes_bulk_delete_result');

