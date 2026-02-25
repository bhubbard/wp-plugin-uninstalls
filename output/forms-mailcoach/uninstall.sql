-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailcoach_api_token', 'mailcoach_api_endpoint');

