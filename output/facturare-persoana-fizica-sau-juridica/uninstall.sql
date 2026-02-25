-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('av_facturare', 'woofacturareproupsell', 'facturare-rate-time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cnp', 'cui', 'nr_reg_com', 'nume_banca', 'iban', 'tip_facturare');
DELETE FROM wp_usermeta WHERE meta_key IN ('cnp', 'cui', 'nr_reg_com', 'nume_banca', 'iban', 'tip_facturare');
DELETE FROM wp_termmeta WHERE meta_key IN ('cnp', 'cui', 'nr_reg_com', 'nume_banca', 'iban', 'tip_facturare');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cnp', 'cui', 'nr_reg_com', 'nume_banca', 'iban', 'tip_facturare');

