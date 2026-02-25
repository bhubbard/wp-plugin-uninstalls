-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmwplw_facebook_pixel_id', 'gmwplw_gtag_pixel_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gmwplw_facebook_pixel_events', 'gmwplw_enable_facebook_pixel', 'gmwplw_gtag_pixel_events', 'gmwplw_enable_gtag_pixel');
DELETE FROM wp_usermeta WHERE meta_key IN ('gmwplw_facebook_pixel_events', 'gmwplw_enable_facebook_pixel', 'gmwplw_gtag_pixel_events', 'gmwplw_enable_gtag_pixel');
DELETE FROM wp_termmeta WHERE meta_key IN ('gmwplw_facebook_pixel_events', 'gmwplw_enable_facebook_pixel', 'gmwplw_gtag_pixel_events', 'gmwplw_enable_gtag_pixel');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gmwplw_facebook_pixel_events', 'gmwplw_enable_facebook_pixel', 'gmwplw_gtag_pixel_events', 'gmwplw_enable_gtag_pixel');

