-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('speakol_argbox_status', 'speakol_app_id', 'speakol_box_width', 'speakol_displays_in', 'speakol_lang', 'speakol_title', 'speakol_no_title');

