-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('onlist_status', 'cbns_filepath', 'cbns_filecopy', 'cbsn_email', 'cbsn_secret_key', 'cbsn_onlist');

