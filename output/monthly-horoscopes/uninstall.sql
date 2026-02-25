-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('horoscopes_options', 'generatedapikey', 'initialnumbermonths');

