-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('RFWC_cassa_previdenziale', 'RFWC_cassa_previdenziale_tipologia', 'RFWC_cassa_previdenziale_percentuale');

