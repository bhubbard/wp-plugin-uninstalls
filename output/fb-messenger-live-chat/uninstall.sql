-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ztb_source', 'ztb_id', 'ztb_domainid', 'ztb_email', 'access_key', 'ztb_access_key', 'ztb_status_message', 'ztb_status_disconnect', 'ztb_token_key');

