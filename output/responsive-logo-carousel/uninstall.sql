-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rlc_carousel_orderby', 'lgs_wordpress_gallery');

