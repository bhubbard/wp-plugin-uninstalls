-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smmg_iframeWidth', 'smmg_iframeHeight', 'smmg_descriptionCustomField', 'smmg_thumbnailCustomField', 'smmg_durationCustomField', 'smmg_directorCustomField', 'smmg_writerCustomField', 'smmg_starsCustomField', 'smmg_ratingCustomField', 'smmg_genreCustomField', 'smmg_countryCustomField', 'smmg_nextpageCustomField');

