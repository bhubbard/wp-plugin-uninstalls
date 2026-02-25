-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsmaps_gmap_key', 'bsmaps_options', 'bsmaps_ad_banner_popup_dismissed');

