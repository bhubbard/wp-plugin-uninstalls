-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('beerxml_shortcode_cache', 'beerxml_shortcode_units', 'beerxml_shortcode_download', 'beerxml_shortcode_style', 'beerxml_shortcode_mash', 'beerxml_shortcode_misc', 'beerxml_shortcode_actuals', 'beerxml_shortcode_fermentation', 'beerxml_shortcode_mhop');

