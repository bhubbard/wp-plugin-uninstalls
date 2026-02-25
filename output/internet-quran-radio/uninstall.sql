-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mp3quran_form', 'mp3quran_title', 'mp3quran_height', 'mp3quran_autostart', 'mp3quran_viewtitle');

