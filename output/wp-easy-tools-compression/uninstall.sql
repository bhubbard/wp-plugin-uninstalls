-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('diet_apiusername', 'diet_apipassword', 'wtc_provider', 'tinypng_apikey', 'kraken_apikey', 'kraken_secretkey', 'wtc_media_compress', 'wtc_compress_css', 'wtc_compress_html', 'wtc_compress_js', 'wtc_compress_main_css');

