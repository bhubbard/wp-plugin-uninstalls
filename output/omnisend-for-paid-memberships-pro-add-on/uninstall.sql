-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmp_initial_sync_made', 'omnisend_pmp_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmpro_bfirstname', 'pmpro_blastname', 'pmpro_baddress1', 'pmpro_baddress2', 'pmpro_bcity', 'pmpro_bstate', 'pmpro_bzipcode', 'pmpro_bcountry', 'pmpro_bphone');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmpro_bfirstname', 'pmpro_blastname', 'pmpro_baddress1', 'pmpro_baddress2', 'pmpro_bcity', 'pmpro_bstate', 'pmpro_bzipcode', 'pmpro_bcountry', 'pmpro_bphone');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmpro_bfirstname', 'pmpro_blastname', 'pmpro_baddress1', 'pmpro_baddress2', 'pmpro_bcity', 'pmpro_bstate', 'pmpro_bzipcode', 'pmpro_bcountry', 'pmpro_bphone');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmpro_bfirstname', 'pmpro_blastname', 'pmpro_baddress1', 'pmpro_baddress2', 'pmpro_bcity', 'pmpro_bstate', 'pmpro_bzipcode', 'pmpro_bcountry', 'pmpro_bphone');

