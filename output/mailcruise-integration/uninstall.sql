-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailcruise_api_token', 'mailcruise_endpoint', 'mailcruise_list_uid');

