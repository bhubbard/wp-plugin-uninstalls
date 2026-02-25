-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdm_salsa_grps', 'gf_salsa_options', 'wdm_salsa_fields');

