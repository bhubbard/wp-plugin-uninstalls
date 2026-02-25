-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('motyw_color', 'kategoria_color', 'imie_nazwisko', 'motto', 'upload_image');

