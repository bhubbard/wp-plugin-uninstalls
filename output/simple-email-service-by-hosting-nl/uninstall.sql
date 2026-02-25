-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ses_by_hosting_nl_api_key', 'ses_by_hosting_nl_from_email', 'ses_by_hosting_nl_from_name');

