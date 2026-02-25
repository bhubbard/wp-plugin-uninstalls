-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stf_tools', 'stf_tools_iyear', 'stf_tools_uyear', 'stf_tools_aoutupdate', 'stf_tools_owner', 'stf_tools_type', 'stf_tools_freetext');

