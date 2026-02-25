-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('si_contact_form_gb', 'sicf_ctct_valid', 'sicf_ctct', 'sicf_ctct_cc_lists');
DELETE FROM wp_options WHERE option_name LIKE 'sicf_ctct_form_%';

