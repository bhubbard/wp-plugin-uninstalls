-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('I3GEEK_MIP_NOTICE', 'I3GEEK_MIP_UPDATE_FLAG');

