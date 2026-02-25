-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unlockpage_verification_token', 'unlockpage_signing_secret', 'unlockpage_api_url');

