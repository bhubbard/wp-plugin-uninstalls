-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allpacka_allapot', 'allpacka_fizetesi_modok', 'allpacka_felado_neve', 'allpacka_felado_bank_neve', 'allpacka_felado_bankszamlaszama', 'allpacka_tiltott_aru', 'allpacka_aszf', 'allpacka_tesztkornyezet', 'allpacka_email', 'allpacka_jelszo', 'allpacka_debug', 'allpacka_cod_notice_dismiss');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_allpacka_azonosito', '_allpacka_fuvarlevelszam', '_allpacka_kivalasztott_gls_csomagpont');
DELETE FROM wp_usermeta WHERE meta_key IN ('_allpacka_azonosito', '_allpacka_fuvarlevelszam', '_allpacka_kivalasztott_gls_csomagpont');
DELETE FROM wp_termmeta WHERE meta_key IN ('_allpacka_azonosito', '_allpacka_fuvarlevelszam', '_allpacka_kivalasztott_gls_csomagpont');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_allpacka_azonosito', '_allpacka_fuvarlevelszam', '_allpacka_kivalasztott_gls_csomagpont');

