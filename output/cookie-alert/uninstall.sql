-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cookiealert_attivo', 'cookiealert_testo', 'cookiealert_informativa', 'cookiealert_link', 'cookiealert_testobottone', 'cookiealert_colorebottone', 'cookiealert_posizione');

