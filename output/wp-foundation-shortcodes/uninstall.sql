-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('enable-google-map', 'enable-slick-slider', 'enable-fontawesome', 'suppress_filters', 'foundation_categories');

