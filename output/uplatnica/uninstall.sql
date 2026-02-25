-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('valuta', 'qr_size', 'platilac', 'naziv_primaoca', 'svrha_uplate', 'sifra_placanja', 'broj_racuna_prefix', 'broj_racuna', 'broj_racuna_sufix', 'iznos', 'model', 'poziv_broj', 'qr');

