-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nyt_bestseller_listings_apiKey', 'nyt_bestseller_listings_defaultList', 'bestseller-lists-nyt-plugin-version', '{self::}_apiKey', '{self::}_defaultList', '{self::}_CatalogLinkFormat');
DELETE FROM wp_options WHERE option_name LIKE '%_apiKey';
DELETE FROM wp_options WHERE option_name LIKE '%_CatalogLinkFormat';

