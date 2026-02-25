-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eg_size', 'eg_rating', 'eg_defaulturl', 'eg_style_span', 'eg_style_img', 'eg_api_hook');

