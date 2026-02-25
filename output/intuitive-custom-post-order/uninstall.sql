-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hicpo_network_sites', 'hicpo_options', 'hicpo_activation', 'hicpo_ver');

