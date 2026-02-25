-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WidgTit', 'Ad1Destination', 'Ad1Img', 'Ad2Destination', 'Ad2Img', 'Ad3Destination', 'Ad3Img', 'Ad4Destination', 'Ad4Img', 'Ad5Destination', 'Ad5Img', 'Ad6Destination', 'Ad6Img');

