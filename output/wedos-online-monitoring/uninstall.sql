-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('won_api_url', 'won_pair_checkId', 'won_pair_apiToken', 'won_pair_token', 'won_pair_publicToken', 'won_pair_connectionCheck');

