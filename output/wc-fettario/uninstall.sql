-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('IAWC_cassa_previdenziale', 'cassa_previdenziale');

