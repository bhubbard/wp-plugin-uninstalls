-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kp_sip_calculator_options', 'kp_sip_calculator_tools');

