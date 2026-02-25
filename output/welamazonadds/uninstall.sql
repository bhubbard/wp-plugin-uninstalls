-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WAA_location', 'WAA_partnerID', 'WAA_priceIndicatorPage', 'WAA_backgroundColorPage', 'WAA_borderColorPage', 'WAA_textColorPage', 'WAA_linkColorPage', 'WAA_targetPage', 'WAA_imageSizePage', 'WAA_priceIndicatorSidebar', 'WAA_backgroundColorSidebar', 'WAA_borderColorSidebar', 'WAA_textColorSidebar', 'WAA_linkColorSidebar', 'WAA_targetSidebar', 'WAA_imageSizeSidebar', 'WAA_pictureTarget', 'WELAmazonAdds_partnerID', 'widget_waa-link');

