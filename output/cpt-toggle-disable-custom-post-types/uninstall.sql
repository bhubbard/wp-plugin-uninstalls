-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cptt_dcp_disabled', 'cpt_toggle_disabled', 'cptt_dcp_all_cpts', 'cpt_toggle_all_cpts');

