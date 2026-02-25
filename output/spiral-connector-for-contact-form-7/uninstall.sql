-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scfcf7_beta', 'scfcf7_step', 'scfcf7_accountid', 'scfcf7_apikey', 'scfcf7_appId', 'scfcf7_ipblock', 'scfcf7_failed_data', 'scfcf7_btn');
DELETE FROM wp_options WHERE option_name LIKE '%_localpart';
DELETE FROM wp_options WHERE option_name LIKE '%_domainid';
DELETE FROM wp_options WHERE option_name LIKE 'scfcf7_error_%';
DELETE FROM wp_options WHERE option_name LIKE 'scfcf7_success_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('scfcf7_dbid', 'scfcf7_domainid', 'scfcf7_localpart', 'scfcf7_active', 'scfcf7_under', 'scfcf7_mapping');
DELETE FROM wp_usermeta WHERE meta_key IN ('scfcf7_dbid', 'scfcf7_domainid', 'scfcf7_localpart', 'scfcf7_active', 'scfcf7_under', 'scfcf7_mapping');
DELETE FROM wp_termmeta WHERE meta_key IN ('scfcf7_dbid', 'scfcf7_domainid', 'scfcf7_localpart', 'scfcf7_active', 'scfcf7_under', 'scfcf7_mapping');
DELETE FROM wp_commentmeta WHERE meta_key IN ('scfcf7_dbid', 'scfcf7_domainid', 'scfcf7_localpart', 'scfcf7_active', 'scfcf7_under', 'scfcf7_mapping');

