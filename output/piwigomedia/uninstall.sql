-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piwigomedia_images_per_page', 'piwigomedia_piwigo_urls', 'piwigomedia_piwigo_url');

