-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spreadshopSlug', 'spreadshopToken', 'spreadshopOptimizeUrl', 'spreadshopMetadata', 'spreadshopSwipeMenu', 'spreadshopLoadFonts', 'spreadshopPlatform', 'spreadshopID', 'spreadshopLocale', 'spreadshopNaviEntry');

