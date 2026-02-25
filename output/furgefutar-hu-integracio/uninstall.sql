-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('furgefutar_gls_csomagpont_api_kulcs', 'furgefutar_gls_csomagpont_tipus', 'furgefutar_allapot', 'furgefutar_fizetesi_modok', 'furgefutar_felado_neve', 'furgefutar_felado_bank_neve', 'furgefutar_felado_bankszamlaszama', 'furgefutar_tiltott_aru', 'furgefutar_aszf', 'furgefutar_tesztkornyezet', 'furgefutar_email', 'furgefutar_jelszo', 'furgefutar_debug', 'furgefutar_cod_notice_dismiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_furgefutar_kivalasztott_gls_csomagpont', '_furgefutar_azonosito', '_furgefutar_fuvarlevelszam');
DELETE FROM wp_usermeta WHERE meta_key IN ('_furgefutar_kivalasztott_gls_csomagpont', '_furgefutar_azonosito', '_furgefutar_fuvarlevelszam');
DELETE FROM wp_termmeta WHERE meta_key IN ('_furgefutar_kivalasztott_gls_csomagpont', '_furgefutar_azonosito', '_furgefutar_fuvarlevelszam');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_furgefutar_kivalasztott_gls_csomagpont', '_furgefutar_azonosito', '_furgefutar_fuvarlevelszam');

