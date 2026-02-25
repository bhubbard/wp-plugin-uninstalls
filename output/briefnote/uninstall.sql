-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('briefnote_content', 'briefnote_last_saved', 'briefnote_settings', 'briefnote_caps_version', 'briefnote_db_version');

