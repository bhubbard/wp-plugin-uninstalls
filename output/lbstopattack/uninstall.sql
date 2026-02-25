-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lbsa_onlyfront', 'lbsa_namespaces', 'lbsa_levelLFI', 'lbsa_sendnotification', 'lbsa_sendto', 'lbsa_raiseerror', 'lbsa_redirurl', 'lbsa_errorcode', 'lbsa_errormsg', 'lbsa_ipblock', 'lbsa_ipblocktime', 'lbsa_ipblockcount', 'lbsa_checkwp', 'lbsa_unactive', 'lbsa_db_version');

