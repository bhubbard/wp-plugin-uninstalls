-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cartrawler_primary', 'cartrawler_secondary', 'cartrawler_complimentary', 'cartrawler_version', 'cartrawler_clientid', 'cartrawler_title', 'cartrawler_theme', 'cartrawler_title_text', 'my_first_text');

