-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('clm_remNFAuthor', 'clm_addNWAuthor', 'clm_remNFComment', 'clm_addNWComment', 'clm_safeNumber');

