-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('NEURLRP_from_name', 'neurlrp_from_name', 'neurlrp_from_email', 'neurlrp_admin_email', 'neurlrp_cc_email', 'neurlrp_bcc_email', 'NEURLRP_from_email');

