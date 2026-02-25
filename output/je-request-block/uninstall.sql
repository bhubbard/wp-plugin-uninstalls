-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_je_request_votes', '_je_request_status', '_je_request_email', '_je_request_voters', '_je_request_submitter_ip');
DELETE FROM wp_usermeta WHERE meta_key IN ('_je_request_votes', '_je_request_status', '_je_request_email', '_je_request_voters', '_je_request_submitter_ip');
DELETE FROM wp_termmeta WHERE meta_key IN ('_je_request_votes', '_je_request_status', '_je_request_email', '_je_request_voters', '_je_request_submitter_ip');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_je_request_votes', '_je_request_status', '_je_request_email', '_je_request_voters', '_je_request_submitter_ip');

