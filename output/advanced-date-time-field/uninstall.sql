-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adtf_integrations', 'adtf_installed', 'adtf_version', 'adtf_cf7_used');

