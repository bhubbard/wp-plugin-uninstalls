-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rm_art_kuerzung', 'rm_anzahl_kuerzung', 'rm_linkname', 'rm_linkbezeichnung');

