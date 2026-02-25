-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_facturare_cui', '_billing_facturare_nr_reg_com', '_billing_facturare_cnp', 'av_facturare');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_facturare_cui', '_billing_facturare_nr_reg_com', '_billing_facturare_cnp', 'av_facturare');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_facturare_cui', '_billing_facturare_nr_reg_com', '_billing_facturare_cnp', 'av_facturare');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_facturare_cui', '_billing_facturare_nr_reg_com', '_billing_facturare_cnp', 'av_facturare');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_shipping_%';

