-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easy-cookie-consent-gtm-id', 'easy-cookie-consent-version');

