-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb_cod_advance_general_sett_customize', 'sb_cod_advance_general_sett');

