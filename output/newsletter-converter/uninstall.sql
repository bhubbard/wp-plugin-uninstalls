-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('newsletter-converter_stripLinks', 'newsletter-converter_stripStyles', 'newsletter-converter_stripScripts', 'newsletter-converter_convertURL');

