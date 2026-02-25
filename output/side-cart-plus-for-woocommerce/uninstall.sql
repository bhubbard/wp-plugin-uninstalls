-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('siwscp_select2');
DELETE FROM wp_options WHERE option_name LIKE '%wfcerror';

