-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cmx_ccm_call_dir_target', 'cmx_ccm_vers', 'cmx_ccm_ip_whitelist');

